/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.sdolyna.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import ua.aits.sdolyna.functions.Constants;
import ua.aits.sdolyna.functions.Helpers;
import ua.aits.sdolyna.functions.Transliterator;
import ua.aits.sdolyna.model.ArticleModel;
import ua.aits.sdolyna.model.ArticleModel.GalleryModel;
import ua.aits.sdolyna.model.UserModel;

/**
 *
 * @author kiwi
 */
@Controller
@Scope("session")
public class SystemController {
    
    UserModel Users = new UserModel();
    ArticleModel Articles = new ArticleModel();
    Helpers Helpers = new Helpers();
    Transliterator TransliteratorClass = new Transliterator();
    
    @RequestMapping(value = {"/system/login", "/system/logon", "/system/enter"}, method = RequestMethod.GET)
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response)  {
        ModelAndView model = new ModelAndView("/system/login");
        
        return model;
    }
    
    @RequestMapping(value = {"/system/ajax/check/user", "/system/ajax/check/user/"}, method = RequestMethod.GET)
	public @ResponseBody String archiveCheckUser(HttpServletRequest request,HttpServletResponse response) throws Exception {
    	return Users.isExitsUser(request.getParameter("user_login"), request.getParameter("user_password"));
    }
        
    @RequestMapping(value = {"/system/login.do","/system/login.do/"}, method = RequestMethod.POST)
    public ModelAndView login(@RequestParam("user_code") String user_code, @RequestParam("user_login") String user_name, @RequestParam("user_password") String user_password, HttpServletRequest request, HttpServletResponse response) throws Exception {
        UserModel user = Users.getOneUserFullById(user_code);
        HttpSession session = request.getSession(true);
	session.setAttribute("user", user);
        return new ModelAndView("redirect:" + "/system/index/1");   
    }
    @RequestMapping(value = {"/system/index", "/system/main", "/system/home"}, method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("/system/index");
        model.addObject("articles", Articles.getArticlesByType("0"));
        model.addObject("category", "0");
    	model.addObject("cat_name", Helpers.getCatName("0"));
        return model;
    }
    
    @RequestMapping(value = {"/system/index/{id}", "/system/main/{id}", "/system/home/{id}"}, method = RequestMethod.GET)
    public ModelAndView category(@PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("/system/index");
        model.addObject("articles", Articles.getArticlesByType(id));
        model.addObject("category", id);
    	model.addObject("cat_name", Helpers.getCatName(id));
        return model;
    }
    @RequestMapping(value = {"/system/logout.do","/system/logout.do/"})
    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(false);
        if (session != null) { session.invalidate(); }
        return new ModelAndView("redirect:" + "/system/login"); 
    } 
    @RequestMapping(value = {"/system/add/{id}", "/system/add/{id}/"}, method = RequestMethod.GET)
    public ModelAndView projectAdd(@PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
    	ModelAndView model = new ModelAndView("/system/add");
    	String folder = "files";
    	model.addObject("folder", folder);
    	model.addObject("folder_str", folder.replace('/', '|'));
        model.addObject("category", id);
    	model.addObject("cat_name", Helpers.getCatName(id));
    	return model;
    }
    
    @RequestMapping(value = {"/system/edit/{id}", "/system/edit/{id}/"}, method = RequestMethod.GET)
    public ModelAndView projectEdit(@PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
    	ModelAndView model= new ModelAndView("/system/edit");
    	ArticleModel temp = Articles.getArticleByID(id);
        String folder = "files";
    	model.addObject("folder", folder);
    	model.addObject("folder_str", folder.replace('/', '|'));
    	model.addObject("category", temp.article_category);
    	model.addObject("cat_name", Helpers.getCatName(temp.article_category.toString()));
        model.addObject("article", temp);
        model.addObject("images", temp.article_images);
    	return model;
    }
    
    @RequestMapping(value = {"/tools/imageupload/{folder}/","/tools/imageupload/{folder}"}, method = RequestMethod.GET)
    public ModelAndView fileManager (@PathVariable("folder") String folder,HttpServletRequest request, HttpServletResponse response) throws Exception {
        String path = request.getParameter("path");
        String type = request.getParameter("type");
        String ckeditor = request.getParameter("CKEditor");
        String num = request.getParameter("CKEditorFuncNum");
        ModelAndView model = new ModelAndView("/tools/FileDrag");
        model.addObject("ckeditor", ckeditor);
        model.addObject("num", num);
        model.addObject("type", type);
        model.addObject("folder", folder.replace('|', '/'));
        if("".equals(path)) {
            model.addObject("path",path.replace(",", "/"));
        }
   	return model;
    }
    
    
    @RequestMapping(value = "/system/do/insertdata", method = RequestMethod.POST)
    public ModelAndView addArticle(HttpServletRequest request) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, UnsupportedEncodingException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	String titleEN = request.getParameter("titleEN");
    	String titleRU = request.getParameter("titleRU");
    	String textEN = request.getParameter("textEN");
    	String textRU = request.getParameter("textRU");
        String date = request.getParameter("date");
        String date_end = request.getParameter("act-date");
    	String category = request.getParameter("category");
        String files_data = request.getParameter("gallery-items");
    	String id = Articles.insertArticle(titleEN, titleRU, textEN, textRU, category, date, date_end);
        List<GalleryModel> items = new LinkedList<>();
        String[] itm = files_data.split("\\|");
        for(String i: itm) {
            String[] row = i.split("\\,");
            GalleryModel imag = Articles.new GalleryModel();
            imag.setImage_url(row[0].replace("path:",""));
            imag.setImage_title_ru(row[1].replace("textRU:",""));
            imag.setImage_title_en(row[2].replace("textEN:",""));
            imag.setImage_article_id(Integer.parseInt(id));
            items.add(imag);
        }
        Articles.insertGalImages(items);
    	return new ModelAndView("redirect:" + "/system/index/"+category);
    }
        
    @RequestMapping(value = "/system/do/editdata", method = RequestMethod.POST)
    public ModelAndView editArticle(HttpServletRequest request) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, UnsupportedEncodingException, IOException {
    	request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("article_id");
    	String titleEN = request.getParameter("titleEN");
    	String titleRU = request.getParameter("titleRU");
    	String textEN = request.getParameter("textEN");
    	String textRU = request.getParameter("textRU");
    	String date = request.getParameter("date");
        String date_end = request.getParameter("act-date");
    	String category = request.getParameter("category");
        String files_data = request.getParameter("gallery-items");
    	List<GalleryModel> items = new LinkedList<>();
        String[] itm = files_data.split("\\|");
        for(String i: itm) {
            String[] row = i.split("\\,");
            GalleryModel imag = Articles.new GalleryModel();
            imag.setImage_url(row[0].replace("path:",""));
            imag.setImage_title_ru(row[1].replace("textRU:",""));
            imag.setImage_title_en(row[2].replace("textEN:",""));
            imag.setImage_article_id(Integer.parseInt(id));
            items.add(imag);
        }
        Articles.cleanGallery(id);
    	Articles.updateArticle(id, titleEN, titleRU, textEN, textRU, category, date, date_end);
        Articles.insertGalImages(items);
    	return new ModelAndView("redirect:" + "/system/index/"+category);
    }
    @RequestMapping(value = {"/system/delete/{id}","/system/delete/{id}/"})
    public ModelAndView deleteArticle(@PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
    	request.setCharacterEncoding("UTF-8");
        ArticleModel temp = Articles.getArticleByID(id);
        Articles.deleteArticle(id);
    	return new ModelAndView("redirect:" + "/system/index/" + temp.article_category);
    }
        
        
    @RequestMapping(value = {"/system/do/uploadimage", "/system/do/uploadimage/"}, method = RequestMethod.POST)
    public @ResponseBody String uploadImageHandler(@RequestParam("file") MultipartFile file, @RequestParam("path") String path,  HttpServletRequest request) {
    	String name = file.getOriginalFilename();
        name = TransliteratorClass.transliterate(name);
    	if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
            	File dir = new File(Constants.home+path);
            	if (!dir.exists())
                	dir.mkdirs();
            	File serverFile = new File(dir.getAbsolutePath() + File.separator + name);
            	try (BufferedOutputStream stream = new BufferedOutputStream( new FileOutputStream(serverFile))) {
                	stream.write(bytes);
            	}
            	return "";
            } catch (Exception e) {
            	return "You failed to upload " + name + " => " + e.getMessage();
            }
    	} else {
        	return "You failed to upload " + name + " because the file was empty.";
    	}
    }
    
    @RequestMapping(value = {"/system/do/uploadfile", "/system/do/uploadfile/"}, method = RequestMethod.POST)
    public @ResponseBody String uploadFileHandler(@RequestParam("file") MultipartFile file, @RequestParam("path") String path,  HttpServletRequest request) {
    	String name = file.getOriginalFilename();
    	if (!file.isEmpty()) {
        	try {
            	byte[] bytes = file.getBytes();
            	File dir = new File(Constants.home+path);
            	if (!dir.exists())
                	dir.mkdirs();
            	File serverFile = new File(dir.getAbsolutePath() + File.separator + name);
            	try (BufferedOutputStream stream = new BufferedOutputStream( new FileOutputStream(serverFile))) {
                	stream.write(bytes);
            	}
            	return name;
        	} catch (Exception e) {
            	return "You failed to upload " + name + " => " + e.getMessage();
        	}
    	} else {
        	return "You failed to upload " + name + " because the file was empty.";
    	}
    }
    
    @RequestMapping(value = "/system/do/removefile", method = RequestMethod.GET)
    public @ResponseBody String removeFileOrDir(HttpServletRequest request) {
    	String path = request.getParameter("path");
    	File temp = new File(Constants.home + path);
    	Boolean result = temp.delete();
    	return result.toString();
    }
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    public @ResponseBody
    String uploadFileHandlerFull(@RequestParam("upload") MultipartFile file, @RequestParam("path") String path,  HttpServletRequest request) {
        
                String name = file.getOriginalFilename();
        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
                // Creating the directory to store file
                File dir = new File(Constants.home+path);
                if (!dir.exists())
                    dir.mkdirs();
 
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + name);
                try (BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile))) {
                    stream.write(bytes);
                }
                String link_path = serverFile.getAbsolutePath().replace(Constants.home,"");
                return "<img class=\"main-img\" src=\""+Constants.URL+link_path+"\" realpath='"+link_path+"'  alt='" + link_path+file.getName() + "'  />";
            } catch (Exception e) {
                return "You failed to upload " + name + " => " + e.getMessage();
            }
        } else {
            return "You failed to upload " + name
                    + " because the file was empty.";
        }
    }
    
}
