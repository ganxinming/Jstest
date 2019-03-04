package com.jquery;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletJquery")
public class ServletJquery extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      /**
       * 封装成JSON对象
       * String name=request.getParameter("username");
        JSONObject jObject=new JSONObject();
        jObject.put("name", name);
        response.getWriter().write(jObject);
       */
      String name=request.getParameter("username");
      response.getWriter().write(name);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
