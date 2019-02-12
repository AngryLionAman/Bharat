/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inquiryhere.Answer;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AngryLion
 */
public class AnswerPageControler extends HttpServlet {

    AnswerPageDataOperation answerPageDataOperation;

    @Override
    public void init() {
        String jdbcUrl = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        answerPageDataOperation = new AnswerPageDataOperation(jdbcUrl, jdbcUsername, jdbcPassword);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getServletPath();
        switch (action) {
            case "/PageTitleDescription":
        {
            try {
                PageTitleDescription(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(AnswerPageControler.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
                break;
        }

    }

    private void PageTitleDescription(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
     AnswerPojoClass answerPojoClass = answerPageDataOperation.PageTitleDescription();
     RequestDispatcher dispatcher = request.getRequestDispatcher("TEST_DISPLAY_SHORT_ANSWER.jsp");
        request.setAttribute("answerPojoClass", answerPojoClass);
        dispatcher.forward(request, response);
       
    }

}
