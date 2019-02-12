/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inquiryhere.FirstPage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
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
public class FirstPageControler extends HttpServlet {

    FirstPageDataOperation firstPageDataOperation;

    @Override
    public void init() {
        String jdbcUrl = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        firstPageDataOperation = new FirstPageDataOperation(jdbcUrl, jdbcUsername, jdbcPassword);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    /**
     *
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrintWriter printWriter = response.getWriter();
        printWriter.print("this is servlet");
        try {
            String action = request.getServletPath();
            switch (action) {
                case "/topic":
                    FirstPageTopicMenu(request, response);
                    break;
                case "/FollowedTopicbyUser":
                    FollowedTopicbyUser(request, response);
                    break;
                case "/ResentPostQuestion":
                    ResentPostQuestion(request, response);
                    break;
                case "/RelatdQuestionOffollowedTopicByUser":
                    RelatdQuestionOffollowedTopicByUser(request, response);
                    break;
                case "/TrandingQuestion":
                    TrandingQuestion(request, response);
                    break;
            }

        } catch (SQLException ex) {
            Logger.getLogger(FirstPageControler.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private void FirstPageTopicMenu(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<FirstPagePojoClass> topic;
        PrintWriter printWriter = response.getWriter();
        //printWriter.print("Before the dataoperation");
        topic = firstPageDataOperation.Topic();
        printWriter.print("after the dataoperation");
        request.setAttribute("topic", topic);
        RequestDispatcher dispatcher = request.getRequestDispatcher("try.jsp");
        dispatcher.forward(request, response);
    }

    private void FollowedTopicbyUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<FirstPagePojoClass> followedtopicbyuser;
        followedtopicbyuser = firstPageDataOperation.FollowedTopicbyUser();
        request.setAttribute("followedtopicbyuser", followedtopicbyuser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("TEST_QUESTION.jsp");
        dispatcher.forward(request, response);

    }

    private void ResentPostQuestion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<FirstPagePojoClass> resenstpostedquestion = firstPageDataOperation.ResentPostQuestion();
        request.setAttribute("resenstpostedquestion", resenstpostedquestion);
        RequestDispatcher dispatcher = request.getRequestDispatcher("TEST_RECENT_POST_QUESTION.jsp");
        dispatcher.forward(request, response);
    }

    private void RelatdQuestionOffollowedTopicByUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<FirstPagePojoClass> RelatdQuestionOffollowedTopicByUser = firstPageDataOperation.RelatdQuestionOffollowedTopicByUser();
        request.setAttribute("RelatdQuestionOffollowedTopicByUser", RelatdQuestionOffollowedTopicByUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("TEST_QUESTION_RELATED_OF_SELECTED_TOPIC.jsp");
        dispatcher.forward(request, response);

    }

    private void TrandingQuestion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<FirstPagePojoClass> trandingQuestion = firstPageDataOperation.TrandingQuestion();
        request.setAttribute("trandingQuestion", trandingQuestion);
        RequestDispatcher dispatcher = request.getRequestDispatcher("TEST_TRANDING_QUESTION.jsp");
        dispatcher.forward(request, response);  
    }

}
