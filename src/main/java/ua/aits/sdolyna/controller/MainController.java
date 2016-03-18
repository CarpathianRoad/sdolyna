/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.sdolyna.controller;

import java.sql.SQLException;
import java.text.ParseException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
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
        model.addObject("article", Articles.getArticleByIDAndLan(id, lan));
        model.addObject("lan", lan);
        model.addObject("fullURLEN","en/articles/full/"+id);
        model.addObject("fullURLRU","ru/articles/full/"+id);
        return model;
    }
    
    @RequestMapping(value = {"/{lan}/articles/festivals"}, method = RequestMethod.GET)
    public ModelAndView festivals(@PathVariable("lan") String lan, HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("festivals");
        model.addObject("festivals", Articles.getArticlesByTypeAndLan("1", lan));
        model.addObject("lan", lan);
        model.addObject("fullURLEN","en/articles/festivals");
        model.addObject("fullURLRU","ru/articles/festivals");
        return model;
    }
    @RequestMapping(value = {"/{lan}/articles/camps"}, method = RequestMethod.GET)
    public ModelAndView camps(@PathVariable("lan") String lan, HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("camps");
        model.addObject("camps", Articles.getArticlesByTypeAndLan("3", lan));
        model.addObject("lan", lan);
        model.addObject("fullURLEN","en/articles/camps");
        model.addObject("fullURLRU","ru/articles/camps");
        return model;
    }
}