<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<%
    if (session.getAttribute("email") != null) {
        try {
            int question_id = 0;
            String email = (String) session.getAttribute("email");
            String Question = (String) request.getParameter("question");

            try {
                Connection con_question_store;
                Statement stmt_question_store;
                ResultSet rs_question_store;
                Class.forName("com.mysql.jdbc.Driver");
                con_question_store = DriverManager.getConnection(DB_URL_,DB_USERNAME_,DB_PASSWORD_);
                int id = 0;
                stmt_question_store = con_question_store.createStatement();
                String p_question_store = "SELECT * FROM newuser WHERE email = '" + email + "'";
                rs_question_store = stmt_question_store.executeQuery(p_question_store);
                while (rs_question_store.next()) {
                    id = rs_question_store.getInt("id");
                }
                String q_question_store = "insert into question(id,question) values('" + id + "','" + Question + "')";
                stmt_question_store.execute(q_question_store);
                stmt_question_store.close();
                con_question_store.close();
                rs_question_store.close();
                //response.sendRedirect("Main.jsp");
            } catch (Exception e1) {
                out.print("Error:-" + e1);
            }
            try {

                Connection con_fetch_question;
                Statement stmt_fetch_question;
                ResultSet rs_fetch_question;
                Class.forName("com.mysql.jdbc.Driver");
                con_fetch_question = DriverManager.getConnection(DB_URL_,DB_USERNAME_,DB_PASSWORD_);
                stmt_fetch_question = con_fetch_question.createStatement();
                String fetch_question = "select * from question where question= '" + Question + "'";
                rs_fetch_question = stmt_fetch_question.executeQuery(fetch_question);
                while (rs_fetch_question.next()) {
                    String Stored_question = rs_fetch_question.getString("question");
                    question_id = rs_fetch_question.getInt("q_id");
                    //out.println("<br>"+Stored_topic+" = "+arrSplit[i]);
                    if (Stored_question.equalsIgnoreCase(Question)) {
                        out.println("<br>" + question_id + " " + Question);
                    }

                }
                String total_number_of_answer = "0";
                Statement stmt_nodification_store = con_fetch_question.createStatement();
                String insert_into_nodification = "insert into nodification_count(question_id,total_number_of_answer) values('" + question_id + "','" + total_number_of_answer + "')";
                stmt_nodification_store.execute(insert_into_nodification);
                stmt_nodification_store.close();
                rs_fetch_question.close();
                stmt_fetch_question.close();
                con_fetch_question.close();
            } catch (Exception e3) {
                out.println("Error" + e3);
            }

            String question_tag = (String) request.getParameter("tag_of_question");
            String[] arrSplit = question_tag.split(",");
            String status = null;

            for (int i = 0; i < arrSplit.length; i++) {
                status = null;
                Connection con;
                Statement stmt;
                ResultSet rs;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(DB_URL_,DB_USERNAME_,DB_PASSWORD_);
                stmt = con.createStatement();
                String v = "select topic_name from topic";
                rs = stmt.executeQuery(v);
                while (rs.next()) {
                    String Stored_topic = rs.getString("topic_name");
                    //out.println("<br>"+Stored_topic+" = "+arrSplit[i]);
                    if (Stored_topic.equalsIgnoreCase(arrSplit[i])) {
                        status = "present";
                    }
                }
                if (status != "present") {
                    try {
                        Statement stmt_topic_ = con.createStatement();
                        String inserting_the_topic = "insert into topic(topic_name) values('" + arrSplit[i] + "')";
                        stmt_topic_.execute(inserting_the_topic);
                        stmt_topic_.close();
                        out.println("<br><b>Successfully inserted</b>");
                    } catch (Exception e2) {
                        out.println("Status Error:" + e2);
                    }
                } else {
                    out.println("<br><b>Topic already present</b>");
                }
                rs.close();
                stmt.close();
                con.close();
            }

            for (int i = 0; i < arrSplit.length; i++) {
                try {
                    Connection con_fetch_topic;
                    Statement stmt_fetch_topic, stmt_insert_topicID_and_questionId;
                    ResultSet rs_fetch_topic;
                    Class.forName("com.mysql.jdbc.Driver");
                    con_fetch_topic = DriverManager.getConnection(DB_URL_,DB_USERNAME_,DB_PASSWORD_);
                    stmt_fetch_topic = con_fetch_topic.createStatement();
                    stmt_insert_topicID_and_questionId = con_fetch_topic.createStatement();
                    String fetch_topic = "select * from topic";
                    rs_fetch_topic = stmt_fetch_topic.executeQuery(fetch_topic);
                    while (rs_fetch_topic.next()) {
                        String Stored_topic = rs_fetch_topic.getString("topic_name");
                        int topic_id = rs_fetch_topic.getInt("unique_id");
                        //out.println("<br>"+Stored_topic+" = "+arrSplit[i]);
                        if (Stored_topic.equalsIgnoreCase(arrSplit[i])) {
                            out.println("<br>" + topic_id + " " + Stored_topic);
                            String p = "insert into question_topic_tag(question_id,tag_id) values('" + question_id + "','" + topic_id + "') ";
                            stmt_insert_topicID_and_questionId.execute(p);
                        }

                    }
                    rs_fetch_topic.close();
                    stmt_fetch_topic.close();
                    con_fetch_topic.close();
                } catch (Exception e4) {
                    out.println("Error = " + e4);
                }
            }

            response.sendRedirect("index.jsp");
        } catch (Exception e1) {
            out.print("Error:-" + e1);
        }
    }else{
        out.println("You can't access this page directly, Please <a href=index.jsp>Click here</a> to login");
    }
%>
