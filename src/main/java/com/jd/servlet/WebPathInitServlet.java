package com.jd.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * Created by Ai Lun on 2019-05-21.
 */

@WebServlet(urlPatterns = {}, loadOnStartup = 2)
public class WebPathInitServlet extends HttpServlet {

    @Override
    public void init(ServletConfig config) throws ServletException {
        // 在整体应用上下文当中存储了一个 ctx 的值，用它来引用上下文路径。
        config.getServletContext().setAttribute("ctx", config.getServletContext().getContextPath());
    }
}
