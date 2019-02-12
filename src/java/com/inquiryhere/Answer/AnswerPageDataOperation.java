/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inquiryhere.Answer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author AngryLion
 */
public class AnswerPageDataOperation {
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
    public AnswerPageDataOperation(String jdbcURL, String jdbcUsername, String jdbcPassword) {
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

    AnswerPojoClass PageTitleDescription() throws SQLException {
        AnswerPojoClass answerPojoClass = null;
        String Question = "What is the Rules of Cricket";
        String sql = "SELECT q.question,q.q_id,SUBSTRING(a.answer,1,500) from question q right join answer a on q.q_id = a.q_id where question = '" + Question + "'";
        connect();
        Statement statement = jdbcconnection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
            String SameQuestion = resultSet.getString("q.question");
            String ShortAnswer = resultSet.getString("SUBSTRING(a.answer,1,500)");
            answerPojoClass = new AnswerPojoClass(SameQuestion, ShortAnswer);
        }
        disconnect();
        return answerPojoClass;
    }
    
}
