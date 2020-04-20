package com.example.ContainerTerminal.controllers;

import com.example.ContainerTerminal.Daos.PriceDao;
import com.example.ContainerTerminal.models.Container;
import com.example.ContainerTerminal.models.Seawaybill;
import com.example.ContainerTerminal.models.User;
import com.example.ContainerTerminal.services.ContainerInterface;
import com.example.ContainerTerminal.services.SeaWayBillInterface;
import com.example.ContainerTerminal.services.UserInterface;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
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
    
    @Autowired
    SeaWayBillInterface seawaybillinterface;

    @GetMapping("/")
    public String start() {
        
        return "loginPage";
    }

 

    @PostMapping("/submitlogin")
    public String login(@RequestParam(name = "fname") String username,
            @RequestParam(name = "pas") String password, ModelMap mm, HttpSession session
    ) {
        User u = userinterface.findByUsername(username);
        if (u == null) {
                      mm.addAttribute("message", "To username einai lathos");
            return "loginPage" ;

        } else {
            if (password.equals(u.getPassword())) {
                session.setAttribute("user", u);
                return "welcome";
            } else {
             mm.addAttribute("message", "To password einai lathos");
                return "loginPage";
            }
        }
    }

    @PostMapping("/search")
    public String searchOrderNumber(@RequestParam(name = "search") String order, ModelMap mm,HttpSession session) {
       
        List<Container> all = containerinterface.getAllContainers();
        List<Container> containers = new ArrayList<>();
        boolean exists = false;
        for (int i = 0; i < all.size(); i++) {
            if (order.equals(all.get(i).getOrdernumber().getBookingnumber())) {

                containers.add(all.get(i));
          exists = true;
         }
        }
        if (exists == true) {
            session.setAttribute("containers", containers);
            mm.addAttribute("containers", containers);
            return "c_table";
        } else {
      return "c_table";
     }
    }
    
    
    @GetMapping("/payment")
public String goToPaymentDetails(ModelMap mm,HttpSession session){
   
 List<PriceDao> prices=new ArrayList<>();
  List<Container> containers=(List<Container>) session.getAttribute("containers");
  
        for (int i = 0; i <containers.size() ; i++) {
            int totalCounter=0;
        PriceDao pd=new PriceDao();
      
        String string = containers.get(i).getType();
String[] parts = string.split("-");
String part1 = parts[0]; // 20
String part2 = parts[1]; // C
      
            if ("20".equals(part1)) {
              pd.setWeight(33);
              totalCounter+=33; 
            }
            else{
                 pd.setWeight(43);
              totalCounter+=43; 
            }
           
            if ("N".equals(part2)) {
                pd.setType(5);
                totalCounter+=5;
            }
            else if ("C".equals(part2)) {
            
            pd.setType(20);
                totalCounter+=20;
            }            
            else{
            pd.setType(50);
                totalCounter+=50;
            }
            
            totalCounter+=20;
            pd.setTotal(totalCounter);
            prices.add(pd);
        }
   
   mm.addAttribute("prices",prices);
    return "Payment";
   
}









@GetMapping("/history")
public String getHistoryOfUser(ModelMap mm,HttpSession session){

   User u=(User) session.getAttribute("user");
   
   List<Seawaybill> all=new ArrayList<>() ;
    
   for (int i = 0; i < seawaybillinterface.getAll().size(); i++) {
        if (Objects.equals(seawaybillinterface.getAll().get(i).getUserid().getUserid(), u.getUserid()))
        {
            all.add(seawaybillinterface.getAll().get(i));
        }
   
    }
   
   
//   all.get(0).getBookingnumber()
//   all.get(0).getCustom()
//   all.get(0).getPaid()
  
//    for (Seawaybill seawaybill : all) {
//        seawaybill.getBookingnumber()
//    }
//   
       
   mm.addAttribute("kappa",all);
   
return "wb_table";
}

















 }
