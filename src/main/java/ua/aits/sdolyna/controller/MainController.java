/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.sdolyna.controller;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import ua.aits.sdolyna.functions.TranslateElements;
import ua.aits.sdolyna.model.ArticleModel;

/**
 *
 * @author kiwi
 */
@Controller
@Scope("session")
public class MainController {
    
    ArticleModel Articles = new ArticleModel();
    
    @RequestMapping(value = {"/{lan}/index", "/{lan}/main", "/{lan}/home"}, method = RequestMethod.GET)
    public ModelAndView index(@PathVariable("lan") String lan, HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("index"+lan.toUpperCase());
        model.addObject("lan", lan);
        return model;
    }
    
    @RequestMapping(value = {"/indexEN"}, method = RequestMethod.GET)
    public ModelAndView indexEN(HttpServletRequest request, HttpServletResponse response)  {
        ModelAndView model = new ModelAndView("indexEN");
        model.addObject("lan", "en");
        return model;
    }
    @RequestMapping(value = {"/indexUA"}, method = RequestMethod.GET)
    public ModelAndView indexUA(HttpServletRequest request, HttpServletResponse response)  {
        ModelAndView model = new ModelAndView("indexUA");
        model.addObject("lan", "ru");
        return model;
    }
    
    @RequestMapping(value = {"/{lan}/articles/full/{id}"}, method = RequestMethod.GET)
    public ModelAndView article(@PathVariable("lan") String lan, @PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("full");
        TranslateElements translate = new TranslateElements(lan);
        model.addObject("article", Articles.getArticleByIDAndLan(id, lan));
        model.addObject("lan", lan);
        model.addObject("fullURLEN","en/articles/full/"+id);
        model.addObject("fullURLRU","ru/articles/full/"+id);
        model.addObject("translate",translate);
        return model;
    }
    
    @RequestMapping(value = {"/{lan}/articles/festivals"}, method = RequestMethod.GET)
    public ModelAndView festivals(@PathVariable("lan") String lan, HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("festivals");
        TranslateElements translate = new TranslateElements(lan);
        model.addObject("festivals", Articles.getArticlesByTypeAndLan("1", lan));
        model.addObject("lan", lan);
        model.addObject("fullURLEN","en/articles/festivals");
        model.addObject("fullURLRU","ru/articles/festivals");
        model.addObject("translate",translate);
        return model;
    }
    @RequestMapping(value = {"/{lan}/articles/camps"}, method = RequestMethod.GET)
    public ModelAndView camps(@PathVariable("lan") String lan, HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("camps");
        TranslateElements translate = new TranslateElements(lan);
        model.addObject("camps", Articles.getArticlesByTypeAndLan("3", lan));
        model.addObject("lan", lan);
        model.addObject("fullURLEN","en/articles/camps");
        model.addObject("fullURLRU","ru/articles/camps");
        model.addObject("translate",translate);
        return model;
    }
    
    @RequestMapping(value = {"/sendmail/", "/sendmail"}, method = RequestMethod.GET)
    public @ResponseBody
    String sendMail(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String text = request.getParameter("text");
        final String username = "office@crc.org.ua";
        final String password = "crossroad2000";
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
            message.setFrom(new InternetAddress(email));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("sonyachna-dolyna@ukr.net"));
            message.setSubject("E-mail с сайта:");
            message.setText("Имя: "+name
                    + "\nEmail: " + email 
                    + "\n\n" + text);
            Transport.send(message);
            return "done";
	} catch (MessagingException e) {
            throw new RuntimeException(e);
	}
    }
}