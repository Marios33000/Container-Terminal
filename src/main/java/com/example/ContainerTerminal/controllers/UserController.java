package com.example.ContainerTerminal.controllers;

import com.example.ContainerTerminal.models.Container;
import com.example.ContainerTerminal.models.User;
import com.example.ContainerTerminal.services.ContainerInterface;
import com.example.ContainerTerminal.services.UserInterface;
import java.util.ArrayList;
import java.util.List;
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

    @Autowired
    ContainerInterface containerinterface;

    @GetMapping("/")
    public String start() {

        return "loginPage";}
//    public String start(){
//    
//    return "loginPage";
//    }
    
//    @GetMapping("/forgotPage.jsp")
//    public String forgotPass(){
//    
//    return "forgotPass";
//    }

    @GetMapping("/login")
    public String goToLoginPage() {
        return "loginSubmition";
    }

    @PostMapping("/submitlogin")
    public String login(@RequestParam(name = "fname") String username,
            @RequestParam(name = "pas") String password, ModelMap mm, HttpSession session
    ) {
        User u = userinterface.findByUsername(username);
        if (u == null) {
                      mm.addAttribute("message", "To username einai lathos");
            return "loginSubmi   if (u == null) {\n" +
"                      mm.addAttribute(\"message\", \"To username einai lathos\");tion";
        } else {
            if (password.equals(u.getPassword())) {
                session.setAttribute("user", u);
                return "userPage";
            } else {
             mm.addAttribute("message", "To password einai lathos");
                return "loginSubmition";
            }
        }
    }

    @PostMapping("/search")
    public String searchOrderNumber(@RequestParam(name = "search") String order, ModelMap mm) {
        List<Container> all = containerinterface.getAllContainers();
        List<Container> containers = new ArrayList<>();
        boolean exists = false;
        for (int i = 0; i < all.size(); i++) {
            if (order.equals(all.get(i).getOrdernumber().getBookingnumber())) {

                containers.add(all.get(i));
//                for (Container container : containers) {
//                    container.getContainerid()
//                            container.getContainername()
//                            container.getDate()
//                            container.getDischarged()
//                            container.getOrdernumber().getBookingnumber()
// container.getType()
//                                    
//                                    }
                exists = true;
            }
        }
        if (exists == true) {
            mm.addAttribute("containers", containers);
            return "containerinfo";

        } else {
          
            return "userPage";
        }
    }
    
    
    @GetMapping("payment")
public String goToPaymentDetails(){

return "paymentDetails";
}
    
    }
