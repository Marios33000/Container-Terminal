
package com.example.ContainerTerminal.controllers;

import com.example.ContainerTerminal.models.User;
import com.example.ContainerTerminal.services.UserInterface;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
    
    @Autowired
    UserInterface userinterface;
    

    
    @GetMapping("/")
    public String start(){
    
    return "test";
    }
    
    
    
    @GetMapping("/login")
    public String goToLoginPage(){
              return "loginSubmition";
    }
    
 @PostMapping("/submit")
    public String submitRegister(@RequestParam (name="fname") String fname,
            @RequestParam (name="pas") String password,ModelMap mm ,HttpSession session
            ){    
      User u=userinterface.findByUsername(fname);
      if (u==null) {
          mm.addAttribute("message", "Username doesnt exist");
          return "loginSubmition";
         
     }
    else{
          System.out.println(password);
            if(password==u.getPassword()){
                 session.setAttribute("user",u);
                  return "votepage";
                 }
              else{
                System.out.println(password);
            mm.addAttribute("message","To password einai lathos");
            return "loginSubmition";
            }
        }
    }
}
