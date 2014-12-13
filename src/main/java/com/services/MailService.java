package com.services;

import java.io.IOException;
import java.util.*;

import com.microtripit.mandrillapp.lutung.*;
import com.microtripit.mandrillapp.lutung.model.MandrillApiError;
import com.microtripit.mandrillapp.lutung.view.MandrillMessage;
import com.microtripit.mandrillapp.lutung.view.MandrillMessage.Recipient;
import com.microtripit.mandrillapp.lutung.view.MandrillMessageStatus;
import com.services.models.ContactUsMessage;
import com.sun.scenario.effect.Merge;

/**
 * Created by Cody on 12/13/2014.
 */
public class MailService {
    protected String mandrillApiKey;
    protected String infoEmailAddress;
    protected String subaccount;

    public void setMandrillApiKey(String mandrillApiKey)
    {
        this.mandrillApiKey = mandrillApiKey;
    }
    public void setInfoEmailAddress(String infoEmailAddress)
    {
        this.infoEmailAddress = infoEmailAddress;
    }
    public void setSubaccount(String subaccount){
        this.subaccount = subaccount;
    }

    public void sendContactUsMessage(ContactUsMessage contactUsMessage) throws IOException, MandrillApiError {
        MandrillApi mandrillApi = new MandrillApi(mandrillApiKey);

        // create your message
        MandrillMessage message = new MandrillMessage();
        message.setSubaccount(subaccount);
        message.setSubject(contactUsMessage.getSubject());

        List<MandrillMessage.MergeVar> mergeVariables = new ArrayList<MandrillMessage.MergeVar>();
        MandrillMessage.MergeVar name = new MandrillMessage.MergeVar("NAME", contactUsMessage.getName());
        MandrillMessage.MergeVar email = new MandrillMessage.MergeVar("EMAIL", contactUsMessage.getEmail());
        MandrillMessage.MergeVar phone = new MandrillMessage.MergeVar("PHONE", contactUsMessage.getPhone());
        String vehicleInfo = contactUsMessage.getYear() + " " + contactUsMessage.getMake() + " " + contactUsMessage.getModel();
        MandrillMessage.MergeVar vehicle = new MandrillMessage.MergeVar("VEHICLE", vehicleInfo );
        MandrillMessage.MergeVar subject = new MandrillMessage.MergeVar("SUBJECT", contactUsMessage.getSubject());
        MandrillMessage.MergeVar body = new MandrillMessage.MergeVar("BODY", contactUsMessage.getBody());
        mergeVariables.add(name);
        mergeVariables.add(email);
        mergeVariables.add(phone);
        mergeVariables.add(vehicle);
        mergeVariables.add(subject);
        mergeVariables.add(body);

        message.setGlobalMergeVars(mergeVariables);
        message.setAutoText(true);
        message.setFromEmail(contactUsMessage.getEmail());
        message.setFromName(contactUsMessage.getName());
        // add recipients
        ArrayList<Recipient> recipients = new ArrayList<Recipient>();
        Recipient recipient = new Recipient();
        recipient.setEmail(infoEmailAddress);
        recipient.setName("Website Inquiry");
        recipients.add(recipient);
        message.setTo(recipients);
        message.setPreserveRecipients(true);
        //message.setTags();
        // then ... send
        mandrillApi.messages().sendTemplate("contact-us-message", null, message, true);
        //MandrillMessageStatus[] messageStatusReports = mandrillApi.messages().send(message, false);
    }
}
