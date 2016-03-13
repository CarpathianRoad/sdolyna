/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.sdolyna.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.apache.commons.lang.StringEscapeUtils;
import ua.aits.sdolyna.functions.DB;

/**
 *
 * @author kiwi
 */
public class ArticleModel {
    public Integer article_id;
    public String article_title_ru;
    public String article_title_en;
    public String article_text_ru;
    public String article_text_en;
    public Integer article_category;
    public String article_date;
    public String article_date_end;
    public String article_lang;

    public Integer getArticle_id() {
        return article_id;
    }

    public void setArticle_id(Integer article_id) {
        this.article_id = article_id;
    }

    public String getArticle_title_ru() {
        return article_title_ru;
    }

    public void setArticle_title_ru(String article_title_ru) {
        this.article_title_ru = article_title_ru;
    }

    public String getArticle_title_en() {
        return article_title_en;
    }

    public void setArticle_title_en(String article_title_en) {
        this.article_title_en = article_title_en;
    }

    public String getArticle_text_ru() {
        return article_text_ru;
    }

    public void setArticle_text_ru(String article_text_ru) {
        this.article_text_ru = article_text_ru;
    }

    public String getArticle_text_en() {
        return article_text_en;
    }

    public void setArticle_text_en(String article_text_en) {
        this.article_text_en = article_text_en;
    }
    
    

    public Integer getArticle_category() {
        return article_category;
    }

    public void setArticle_category(Integer article_category) {
        this.article_category = article_category;
    }

    public String getArticle_lang() {
        return article_lang;
    }

    public void setArticle_lang(String article_lang) {
        this.article_lang = article_lang;
    }

    public String getArticle_date() {
        return article_date;
    }

    public void setArticle_date(String article_date) {
        this.article_date = article_date;
    }

    public String getArticle_date_end() {
        return article_date_end;
    }

    public void setArticle_date_end(String article_date_end) {
        this.article_date_end = article_date_end;
    }
    
    
    
    public List<ArticleModel> getArticlesByType(String type) throws SQLException {
        ResultSet result = DB.getResultSet("SELECT * FROM `sdolyna_content` WHERE `article_category` = "+type+";");
    	List<ArticleModel> articles = new LinkedList<>();
        while (result.next()) {
            ArticleModel article = new ArticleModel();
            article.setArticle_id(result.getInt("article_id"));
            article.setArticle_title_ru(result.getString("article_title_ru"));
            article.setArticle_title_en(result.getString("article_title_en"));
            article.setArticle_text_ru(result.getString("article_text_ru"));
            article.setArticle_text_en(result.getString("article_text_en"));
            article.setArticle_category(result.getInt("article_category"));
            article.setArticle_date(result.getString("article_date"));
            article.setArticle_date_end(result.getString("article_date_end"));
            String langs = "";
            if(!"".equals(article.article_title_ru)) {
                langs+= "RU,";
            }
            if(!"".equals(article.article_title_en)) {
                langs+= "EN,";
            }
            article.setArticle_lang(langs.substring(0, langs.length()-1));
            articles.add(article);
        }
        DB.closeCon();
        return articles;
    }
    
    public ArticleModel getArticleByID(String id) throws SQLException {
        ResultSet result = DB.getResultSet("SELECT * FROM `sdolyna_content` WHERE `article_id` = "+id+";");
    	result.first();
            ArticleModel article = new ArticleModel();
            article.setArticle_id(result.getInt("article_id"));
            article.setArticle_title_ru(result.getString("article_title_ru"));
            article.setArticle_title_en(result.getString("article_title_en"));
            article.setArticle_text_ru(result.getString("article_text_ru"));
            article.setArticle_text_en(result.getString("article_text_en"));
            article.setArticle_category(result.getInt("article_category"));
            article.setArticle_date(result.getString("article_date"));
            article.setArticle_date_end(result.getString("article_date_end"));
            String langs = "";
            if(!"".equals(article.article_title_ru)) {
                langs+= "RU,";
            }
            if(!"".equals(article.article_title_en)) {
                langs+= "EN,";
            }
            article.setArticle_lang(langs.substring(0, langs.length()-1));
        
        DB.closeCon();
        return article;
    }
    
    public ArticleModel getArticleByIDAndLan(String id, String lan) throws SQLException {
        ResultSet result = DB.getResultSet("SELECT * FROM `sdolyna_content` WHERE `article_id` = "+id+";");
    	result.first();
            ArticleModel article = new ArticleModel();
            article.setArticle_id(result.getInt("article_id"));
            article.setArticle_title_ru(result.getString("article_title_"+lan.toLowerCase()));
            article.setArticle_title_en(result.getString("article_title_en"));
            article.setArticle_text_ru(result.getString("article_text_"+lan.toLowerCase()));
            article.setArticle_text_en(result.getString("article_text_en"));
            article.setArticle_category(result.getInt("article_category"));
            article.setArticle_date(result.getString("article_date"));
            article.setArticle_date_end(result.getString("article_date_end"));
            String langs = "";
            if(!"".equals(article.article_title_ru)) {
                langs+= "RU,";
            }
            if(!"".equals(article.article_title_en)) {
                langs+= "EN,";
            }
            article.setArticle_lang(langs.substring(0, langs.length()-1));
        
        DB.closeCon();
        return article;
    }
    
    
    public List<ArticleModel> getArticlesByTypeAndLan(String type, String lan) throws SQLException {
        ResultSet result = DB.getResultSet("SELECT * FROM `sdolyna_content` WHERE `article_category` = "+type+";");
    	List<ArticleModel> articles = new LinkedList<>();
        while (result.next()) {
            ArticleModel article = new ArticleModel();
            article.setArticle_id(result.getInt("article_id"));
            article.setArticle_title_ru(result.getString("article_title_"+lan.toLowerCase()));
            article.setArticle_title_en(result.getString("article_title_en"));
            article.setArticle_text_ru(result.getString("article_text_"+lan.toLowerCase()));
            article.setArticle_text_en(result.getString("article_text_en"));
            article.setArticle_category(result.getInt("article_category"));
            article.setArticle_date(result.getString("article_date"));
            article.setArticle_date_end(result.getString("article_date_end"));
            String langs = "";
            if(!"".equals(article.article_title_ru)) {
                langs+= "RU,";
            }
            if(!"".equals(article.article_title_en)) {
                langs+= "EN,";
            }
            article.setArticle_lang(langs.substring(0, langs.length()-1));
            articles.add(article);
        }
        DB.closeCon();
        return articles;
    }
    
    public void insertArticle(String titleEN, String titleRU, String textEN, String textRU, String category, String date, String date_end) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        DB.runQuery("INSERT INTO `sdolyna_content`(`article_category`, `article_title_ru`, `article_title_en`, `article_text_ru`, `article_text_en`, `article_date`, `article_date_end`) VALUES ("
            	+ ""+category+",'"+StringEscapeUtils.escapeSql(titleRU)+"','"+StringEscapeUtils.escapeSql(titleEN)+"','"+StringEscapeUtils.escapeSql(textRU)+"','"+StringEscapeUtils.escapeSql(textEN)+"','"+date+"','"+date_end+"');");
    	DB.closeCon();
    }
    public void updateArticle(String id, String titleEN, String titleRU, String textEN, String textRU, String category, String date, String date_end) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        DB.runQuery("UPDATE `sdolyna_content` SET "
                + "`article_category`="+category+","
                + "`article_title_ru`='"+StringEscapeUtils.escapeSql(titleRU)+"',"
                + "`article_title_en`='"+StringEscapeUtils.escapeSql(titleEN)+"',"
                + "`article_text_ru`='"+StringEscapeUtils.escapeSql(textRU)+"',"
                + "`article_text_en`='"+StringEscapeUtils.escapeSql(textEN)+"',"
                + "`article_date`='"+date+"',`article_date_end` = '"+date_end+"' WHERE article_id = "+id+";");
    	DB.closeCon();
    }
    
    
    public class GalleryModel {
        public Integer image_id;
        public String image_title_ru;
        public String image_title_en;
        public String image_url;
    }
}
