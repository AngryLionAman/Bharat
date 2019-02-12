/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inquiryhere.FirstPage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author AngryLion
 */
public class FirstPageDataOperation {
    public Connection jdbcconnection;
    private final String jdbcURL;
    private final String jdbcUsername;
    private final String jdbcPassword;

    /**
     *
     * @param jdbcURL
     * @param jdbcUsername
     * @param jdbcPassword
     */
    public FirstPageDataOperation(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;
    }

    public void connect() throws SQLException {
        try {
            if (jdbcconnection == null || jdbcconnection.isClosed()) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException e) {
                    throw new SQLException();
                }
                jdbcconnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            }
        } catch (SQLException e) {
            throw new SQLException();
        }

    }

    public void disconnect() throws SQLException {
        try {
            if (jdbcconnection != null || !jdbcconnection.isClosed()) {
                jdbcconnection.close();
            }
        } catch (SQLException e) {
            throw new SQLException();
        }
    }

    List<FirstPagePojoClass> Topic() throws SQLException {
        List<FirstPagePojoClass> topic = new ArrayList<>();
        FirstPagePojoClass firstPagePojoClass;
        String sql = "select * from topic LIMIT 30,20";
        connect();
        Statement statement;
         statement = jdbcconnection.createStatement();
        ResultSet resultSet;
         resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
            int TopicId =  resultSet.getInt("unique_id");
            String TopicName = resultSet.getString("topic_name");
            firstPagePojoClass = new FirstPagePojoClass(TopicId, TopicName);
            topic.add(firstPagePojoClass);
        }   
        disconnect();
        return topic;
       
    }

    List<FirstPagePojoClass> FollowedTopicbyUser() throws SQLException {
        int id_of_user = 1;
        FirstPagePojoClass firstPagePojoClass;
        List<FirstPagePojoClass> followedtopicbyuser = new ArrayList<>();
        String sql = "select t.unique_id,t.topic_name from topic t right "
                + "join topic_followers_detail de on t.unique_id = de.topic_id where user_or_followers_id= '" + id_of_user + "'";
        connect();
        Statement statement = jdbcconnection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
            int TopicId =  resultSet.getInt("unique_id");
            String TopicName = resultSet.getString("topic_name");
            firstPagePojoClass = new FirstPagePojoClass(TopicId, TopicName);
            followedtopicbyuser.add(firstPagePojoClass);
        }
        disconnect();
        return followedtopicbyuser;
    }

    List<FirstPagePojoClass> ResentPostQuestion() throws SQLException {
       List<FirstPagePojoClass> resentpostquestion = new ArrayList<>();
       FirstPagePojoClass firstPagePojoClass;
       String sql = "SELECT q.q_id,q.question,user.firstname,user.id from question q "
               + "right join newuser user on q.id = user.id ORDER BY q_id  DESC limit 10";
       connect();
       Statement statement = jdbcconnection.createStatement();
       ResultSet resultSet = statement.executeQuery(sql);
       while(resultSet.next()){
           int QuestionId = resultSet.getInt("q.q_id");
           String Question = resultSet.getString("q.question");
           int UserId = resultSet.getInt("user.id");
           String UserFirstName = resultSet.getString("user.firstname");
           firstPagePojoClass = new FirstPagePojoClass(QuestionId, Question, UserId, UserFirstName);
           resentpostquestion.add(firstPagePojoClass);
       }
       disconnect();
       return resentpostquestion;
    }

    List<FirstPagePojoClass> RelatdQuestionOffollowedTopicByUser() throws SQLException {
        int id_of_user  = 1;
        String UserFirstName = null;
        int IdOfQuestion = 0;
        List<FirstPagePojoClass> relatdQuestionOffollowedTopicByUser = new ArrayList<>();
        FirstPagePojoClass firstPagePojoClass;
        String sql = "select DISTINCT q.id,q.q_id,q.question from question q "
                + "right join question_topic_tag qtt on q.q_id = qtt.question_id "
                + "where tag_id IN (select t.unique_id from topic t "
                + "right join topic_followers_detail de on t.unique_id = de.topic_id "
                + "where user_or_followers_id= '" + id_of_user + "')";
        String sql_query = "SELECT firstname FROM newuser WHERE id='" + IdOfQuestion + "'";
        connect();
        Statement statement = jdbcconnection.createStatement();
        Statement stmt = jdbcconnection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        ResultSet rs = stmt.executeQuery(sql_query);
        while(resultSet.next()){
            int UserIdOfThisQuestion = resultSet.getInt("q.id");
            IdOfQuestion = resultSet.getInt("q.q_id");
            String Quesion = resultSet.getString("q.question");
                  while(rs.next()){
                      UserFirstName = rs.getString("firstname");
                  }
            firstPagePojoClass = new FirstPagePojoClass(IdOfQuestion, Quesion, UserIdOfThisQuestion, UserFirstName);
            relatdQuestionOffollowedTopicByUser.add(firstPagePojoClass);
        }
        disconnect();
        return relatdQuestionOffollowedTopicByUser;
    }

    List<FirstPagePojoClass> TrandingQuestion() throws SQLException {
       List<FirstPagePojoClass> trandingQuestion = new ArrayList<>();
       FirstPagePojoClass firstPagePojoClass;
       String sql = "SELECT * FROM question ORDER BY TotalLiked DESC limit 10";
       connect();
       Statement statement = jdbcconnection.createStatement();
       ResultSet resultSet = statement.executeQuery(sql);
       while(resultSet.next()){
           String Question = resultSet.getString("question");
           firstPagePojoClass = new FirstPagePojoClass(Question);
           trandingQuestion.add(firstPagePojoClass);
       }
       disconnect();
       return trandingQuestion;
    }
    
}
