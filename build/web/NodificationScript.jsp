<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<% //Got the id from Here only
    String email = (String) session.getAttribute("email");
    String UserId = "";
    try {

        Statement stmt;
        Connection con;
        ResultSet rs;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
        stmt = con.createStatement();
        String v = "SELECT ID FROM newuser WHERE email = '" + email + "'";
        rs = stmt.executeQuery(v);
        while (rs.next()) {
            UserId = rs.getString("ID");
        }
        rs.close();
        stmt.close();
        con.close();
    } catch (Exception e) {
        out.println(e.getMessage());
    }

%>

<%    try { //counted the total numner of answer of a question
        Statement stmt, stmt1, stmt2, stmt3;
        Connection con;
        ResultSet rs, rs1, rs2, rs3;
        String CurrentTotalNumberOfAnswer = "";
        String StoredTotalNumberOfAnswer = "";
        int totalcount = 0;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
        stmt = con.createStatement();
        String v = "select question,q_id from question where id='" + UserId + "'";
        rs = stmt.executeQuery(v);
        while (rs.next()) {
            String QuestionId = rs.getString("q_id");
            String StoredQuestion = rs.getString("question");
            stmt1 = con.createStatement();
            String v1 = "select count(*) q_id from answer where q_id='" + QuestionId + "'";
            rs1 = stmt1.executeQuery(v1);
            while (rs1.next()) {
                CurrentTotalNumberOfAnswer = rs1.getString("q_id");
            }
            stmt1.close();
            rs1.close();
            stmt2 = con.createStatement();
            String v2 = "select total_number_of_answer from nodification_count where question_id='" + QuestionId + "'";
            rs2 = stmt2.executeQuery(v2);
            while (rs2.next()) {
                StoredTotalNumberOfAnswer = rs2.getString("total_number_of_answer");
            }
            stmt2.close();
            rs2.close();
            int int_CurrentTotalNumberOfAnswer = Integer.valueOf(CurrentTotalNumberOfAnswer);
            int int_StoredTotalNumberOfAnswer = Integer.valueOf(StoredTotalNumberOfAnswer);
            int Differance = int_CurrentTotalNumberOfAnswer - int_StoredTotalNumberOfAnswer;
            if (Differance != 0) {
                for (int i = 0; i < 1; i++) {
                    //out.println("<br>Run " + (i + 1) + " Time");
                    stmt3 = con.createStatement();
                    String v3 = "SELECT * FROM answer where q_id='" + QuestionId + "' ORDER BY a_id DESC LIMIT " + Differance + " ";
                    rs3 = stmt3.executeQuery(v3);
                    while (rs3.next()) {
                        totalcount++;
                        String Answer = rs3.getString("answer");
%>
<a href="Answer.jsp?Id=<%=StoredQuestion%>"><%=StoredQuestion%></a>
<%
                        out.println("<br>A." + Answer);
                    }
                    stmt3.close();
                    rs3.close();
                }
            }
        }
        out.println("Total Nodification :" + totalcount);
        stmt.close();
        con.close();
        rs.close();
    } catch (Exception e) {
        out.println("<br>Error" + e.getMessage());
    }

%>



<%   try { //counted the total numner of answer of a question
        //Updating the nodification list

        Statement stmt, stmt1;
        Connection con;
        ResultSet rs, rs1;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
        stmt = con.createStatement();
        String v = "select q_id from question where id='" + UserId + "'";
        rs = stmt.executeQuery(v);
        while (rs.next()) {
            String QuestionId = rs.getString("q_id");
            stmt1 = con.createStatement();
            String v1 = "select count(*) q_id from answer where q_id='" + QuestionId + "'";
            rs1 = stmt1.executeQuery(v1);
            while (rs1.next()) {
                String TotalNumberOfAnswer = rs1.getString("q_id");
                try {
                    PreparedStatement ps = null;
                    String UpdateQuiry = "update nodification_count set total_number_of_answer = '" + TotalNumberOfAnswer + "' where question_id = '" + QuestionId + "'";
                    ps = con.prepareStatement(UpdateQuiry);
                    ps.executeUpdate();
                    ps.close();
                } catch (Exception e) {
                    out.println("Error in nodification " + e);
                }
            }
            stmt1.close();
            rs1.close();
        }
        stmt.close();
        con.close();
        rs.close();
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>