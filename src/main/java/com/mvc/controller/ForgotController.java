package com.mvc.controller;

import java.io.IOException;
import com.mvc.dao.ForgotUser;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ForgotController")
public class ForgotController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("uid");  // User ID for password reset
        String newPassword = request.getParameter("newpwd");  // New password

        ForgotUser forgotUser = new ForgotUser();
        String result = forgotUser.updatePassword(userId, newPassword);  // Call updatePassword method

        if ("Password updated successfully.".equals(result)) {
            request.setAttribute("SUCCESS", result);
            request.getRequestDispatcher("/Forgot.jsp").forward(request, response);
        } else {
            request.setAttribute("ERROR", result);
            request.getRequestDispatcher("/Forgot.jsp").forward(request, response);
        }
    }
}