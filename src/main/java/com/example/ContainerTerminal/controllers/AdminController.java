package com.example.ContainerTerminal.controllers;

import com.example.ContainerTerminal.services.AdminInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class AdminController {
    
    @Autowired
    AdminInterface admininterface;
    
}
