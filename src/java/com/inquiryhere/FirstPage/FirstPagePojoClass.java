/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inquiryhere.FirstPage;

/**
 *
 * @author AngryLion
 */
public class FirstPagePojoClass {
    private int userId;
    private String userFirstName;
    private int topicId;
    private String topicName;
    private int questionId;
    private String question;

    public FirstPagePojoClass(String question) {
        this.question = question;
    }
    
    public FirstPagePojoClass(int questionId, String question, int userId, String userFirstName) {
        this.questionId = questionId;
        this.question = question;
        this.userId = userId;
        this.userFirstName = userFirstName;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setUserFirstName(String userFirstName) {
        this.userFirstName = userFirstName;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public int getUserId() {
        return userId;
    }

    public String getUserFirstName() {
        return userFirstName;
    }

    public int getQuestionId() {
        return questionId;
    }

    public String getQuestion() {
        return question;
    }

    public FirstPagePojoClass(int topicId, String topicName) {
        this.topicId = topicId;
        this.topicName = topicName;
    }

    public int getTopicId() {
        return topicId;
    }

    public void setTopicId(int topicId) {
        this.topicId = topicId;
    }

    public String getTopicName() {
        return topicName;
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName;
    }
}
