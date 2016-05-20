/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.sdolyna.functions;

import java.io.File;
import java.io.FileFilter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.jsoup.Jsoup;

/**
 *
 * @author kiwi
 */
public class Helpers  {
    
    public static String html2text(String html) {
    	return Jsoup.parse(html).text();
    }
    
    public static String replaceChars(String text) {
        text = text.replaceAll("[\\x00-\\x1F]", "");
    	text = text.replaceAll("'\\<.*?>","");
    	text = text.replaceAll("'", "\\\\'");
    	text = text.replaceAll("\\\"", "");
    	text = text.replaceAll("’", "");
        text = text.replaceAll("–", "-");
        text = text.replaceAll(",", "");
        text = text.replaceAll("”", "");
   	text = text.replace(".", "");
   	text = text.replaceAll("/", "");
   	text = text.replace("\\", "");
   	text = text.replaceAll("“", "");
   	text = text.replaceAll("„", "");
   	text = text.replaceAll("‘", "");
    	text = text.replaceAll("«", "");
    	text = text.replaceAll("»", "");
    	text = text.replaceAll("”","");
    	return text;
    }
    
    public static Boolean checkOldArticle(String actual_date) throws ParseException{
        String date_str = actual_date.replace("/", ".");
        DateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
        Date actual = dateFormat.parse(date_str);
        Date today = new Date();
        return actual.before(today);
    }
    
    public static boolean isNumeric(String str)  
    {  
        try 
        {  
            double d = Double.parseDouble(str);  
        }  
        catch(NumberFormatException nfe)  
        {  
            return false;  
        }  
        return true;  
    }
    
    public static String getImageSize(String num) {
        String imageSize = "";
        switch(num) {
            case "1" :
                imageSize = "571x451 pixels";
                break;
            case "2" :
                imageSize = "562x453 pixels";
                break;
            case "3" :
                imageSize = "634x452 pixels";
                break;
            case "4" :
                imageSize = "604x452 pixels";
                break;
        }
        return imageSize;
    }
    
    public String getCatName(String id) {
        String catName = "";
        switch(id) {
            case "0":
                catName = "Направления деятельности";
                break;
            case "1":
                catName = "Фестивали";
                break;
            case "2":
                catName = "Другое";
                break;
            case "3":
                catName = "Детские лагеря";
                break;
        }
        return catName;
    }
    public File lastFileModified(String dir) {
    File fl = new File(dir);
    File[] files = fl.listFiles(new FileFilter() {          
        public boolean accept(File file) {
            return file.isFile();
        }
    });
    Integer lastMod = 0;
    File choice = null;
    for (File file : files) {
        Integer num =  Integer.parseInt(file.getName().split("\\.")[0]);
        if (num > lastMod) {
            choice = file;
            lastMod = num;
        }
    }
    return choice;
}
    public void sendMail(String url, String stack) {
        final String username = "robot@aits.ua";
        final String password = "37Rh!_09=S/U";
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication()  {
                return new javax.mail.PasswordAuthentication( username, password);
            }
        });
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("robot@aits.ua"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress("sirakandrew@gmail.com"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress("director@aits.ua"));
            message.setSubject("Sdolyna error mail:");
            message.setText("URL: "+url+"\nError stack: \n" + stack);
            Transport.send(message);
	} catch (MessagingException e) {
            throw new RuntimeException(e);
	}
        }
}

