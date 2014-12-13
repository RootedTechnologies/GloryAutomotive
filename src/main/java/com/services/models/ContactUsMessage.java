package com.services.models;

/**
 * Created by Cody on 12/13/2014.
 */
public class ContactUsMessage {
    private String name;
    private String email;
    private String phone;
    private String subject;
    private String make;
    private String model;
    private String year;
    private String body;

    public ContactUsMessage()
    {
        this.name = "";
        this.email = "";
        this.phone = "";
        this.subject = "";
        this.make = "";
        this.model = "";
        this.year = "";
        this.body = "";
    }

    public ContactUsMessage(String name, String email, String phone, String subject, String make, String model, String year, String body){
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.subject = subject;
        this.make = make;
        this.model = model;
        this.year = year;
        this.body = body;
    }

    public String getName()
    {
        return this.name;
    }
    public void setName(String value){
        this.name = value;
    }

    public String getEmail()
    {
        return this.email;
    }
    public void setEmail(String value)
    {
        this.email = value;
    }

    public String getPhone(){
        return this.phone;
    }
    public void setPhone(String value){
        this.phone = value;
    }

    public String getSubject(){
        return this.subject;
    }
    public void setSubject(String value){
        this.subject = value;
    }

    public String getMake(){
        return this.make;
    }
    public void setMake(String value){
        this.make = value;
    }

    public String getModel(){
        return this.model;
    }
    public void setModel(String value){
        this.model = value;
    }

    public String getYear(){
        return this.year;
    }
    public void setYear(String value){
        this.year = value;
    }

    public String getBody(){
        return this.body;
    }
    public void setBody(String value){
        this.body = value;
    }
}
