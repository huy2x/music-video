package com.poly.controller;

import java.io.IOException;
import java.util.List;

import com.poly.entity.Video;
import com.poly.service.VideoService;
import com.poly.service.impl.VideoServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/index")
public class HomeController extends HttpServlet {

    private static final long serialVersionUID = 1517115637537021552L;
    private VideoService videoService = new VideoServiceImpl();
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    	List<Video> videos = videoService.findAll();
    	req.setAttribute("videos", videos);
    	req.getRequestDispatcher("/views/user/index.jsp").forward(req, resp);
    }
}