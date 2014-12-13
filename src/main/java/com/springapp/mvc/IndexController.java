package com.springapp.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.microtripit.mandrillapp.lutung.model.MandrillApiError;
import com.services.*;
import com.services.models.*;

import java.util.ArrayList;

@Controller
@RequestMapping("/")
public class IndexController {
	@Autowired private MailService _ms;

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap model) {
		model.addAttribute("message", "Rowlett Glory Automotive");
		return "index";
	}

	@RequestMapping(value = "/contactus/sendmessage", method = RequestMethod.POST, produces = "text/plain")
	public String contactus(@ModelAttribute("contact-name") String name,
							@ModelAttribute("contact-email") String email,
							@ModelAttribute("contact-phone") String phone,
							@ModelAttribute("contact-subject") String subject,
							@ModelAttribute("contact-make") String make,
							@ModelAttribute("contact-model") String model,
							@ModelAttribute("contact-year") String year,
							@ModelAttribute("contact-body") String body)
	{
		try {
			ContactUsMessage message = new ContactUsMessage();
			message.setName(name);
			message.setEmail(email);
			message.setPhone(phone);
			message.setSubject(subject);
			message.setMake(make);
			message.setModel(model);
			message.setYear(year);
			message.setBody(body);

			_ms.sendContactUsMessage(message);
			return ("success");
		}
		catch(Exception error){
			return ("error");
		}
	}
}