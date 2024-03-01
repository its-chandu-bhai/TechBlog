/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techBlog.entities;

public class Contact {

    private int id;
    private String name;
    private String email;
    private String phone;
    private String gender;
    private String faq;

    // default constructor
    public Contact(){}
    
    // Parametrized constructor
    public Contact(int id, String name, String email, String phone, String gender, String faq) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.gender = gender;
        this.faq = faq;
    }

    public Contact(String name, String email, String phone, String gender, String faq) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.gender = gender;
        this.faq = faq;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getFaq() {
        return faq;
    }

    public void setFaq(String faq) {
        this.faq = faq;
    }
    
}
