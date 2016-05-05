/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.sdolyna.functions;

/**
 *
 * @author kiwi
 */
public class TranslateElements {
    public String title;
    public String main;
    public String countries;
    public String festivals;
    public String camps;
    public String license;
    public String address;
    public String contacts;
    public String contactus;
    public String date;
    public String titletable;
    public String contactform;
    public String contactinfo;
    public String name;
    public String message;
    public String send;
    public String complete;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMain() {
        return main;
    }

    public void setMain(String main) {
        this.main = main;
    }

    public String getCountries() {
        return countries;
    }

    public void setCountries(String countries) {
        this.countries = countries;
    }

    public String getFestivals() {
        return festivals;
    }

    public void setFestivals(String festivals) {
        this.festivals = festivals;
    }

    public String getCamps() {
        return camps;
    }

    public void setCamps(String camps) {
        this.camps = camps;
    }

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContacts() {
        return contacts;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts;
    }

    public String getContactus() {
        return contactus;
    }

    public void setContactus(String contactus) {
        this.contactus = contactus;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTitletable() {
        return titletable;
    }

    public void setTitletable(String titletable) {
        this.titletable = titletable;
    }

    public String getContactform() {
        return contactform;
    }

    public void setContactform(String contactform) {
        this.contactform = contactform;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getContactinfo() {
        return contactinfo;
    }

    public void setContactinfo(String contactinfo) {
        this.contactinfo = contactinfo;
    }

    public String getSend() {
        return send;
    }

    public void setSend(String send) {
        this.send = send;
    }

    public String getComplete() {
        return complete;
    }

    public void setComplete(String complete) {
        this.complete = complete;
    }
    
    
    
    public TranslateElements(String lang) {
        if("ru".equals(lang.toLowerCase())) {
            this.setMain("Про компанию");
            this.setCountries("Страны");
            this.setFestivals("Фестивали");
            this.setCamps("Детские лагеря");
            this.setLicense("Лицензия:");
            this.setAddress("89313 Украина, Закарпатская область, Свалявский район, <br/>с. Поляна, ул. Курортная 10");
            this.setContacts("<span style=\"letter-spacing: -1px;\">Тел: +38 (0312) 44-30-54, 44-30-24,</span><br/>\n" +
"                                Факс: +38 (0312) 44-30-24<br/> \n" +
"                                Моб. тел.: +380949183054");
            this.setContactus("Связаться");
            this.setTitle("Солнечная долина");
            this.setDate("Дата");
            this.setContactform("Свяжитесь с нами");
            this.setTitletable("Название");
            this.setMessage("Сообщение");
            this.setName("Ваше имя");
            this.setContactinfo("Заполните эти поля и представители нашей компании свяжуться с вами");
            this.setSend("Отправить");
            this.setComplete("Ваше письмо отправлено <br/>\n" +
"							Подождите минуту.");
        }
        else {
            this.setMain("About Us");
            this.setCountries("Countries");
            this.setFestivals("Festivals");
            this.setCamps("Children’s Camps");
            this.setLicense("License:");
            this.setAddress("10 Kurortna St., Poliana, Slaliava district, Thranscarpathian region, <br/> 89313 Ukraine");
            this.setContacts("<span style=\"letter-spacing: -1px;\">Tel: +38 (0312) 44-30-54, 44-30-24,</span><br/>\n" +
"                                Fax: +38 (0312) 44-30-24<br/> \n" +
"                                Mobile: +380949183054");
            this.setContactus("Contact us");
            this.setTitle("Soniachna Dolyna");
            this.setDate("Date");
            this.setContactform("Contact us");
            this.setTitletable("Title");
            this.setMessage("Message");
            this.setName("Name");
            this.setContactinfo("Fill out the fields and representatives of our company will contact you");
            this.setSend("Send");
            this.setComplete("Your letter has been sent <br/>\n" +
"							Wait a minute.");
        }
    }
}
