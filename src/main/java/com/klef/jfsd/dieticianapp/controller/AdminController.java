package com.klef.jfsd.dieticianapp.controller;

import com.klef.jfsd.dieticianapp.models.Admin;
import com.klef.jfsd.dieticianapp.models.Dietician;
import com.klef.jfsd.dieticianapp.models.Feedback;
import com.klef.jfsd.dieticianapp.models.Subscription;
import com.klef.jfsd.dieticianapp.models.User;
import com.klef.jfsd.dieticianapp.services.AdminService;
import com.klef.jfsd.dieticianapp.services.DieticianService;
import com.klef.jfsd.dieticianapp.services.UserService;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;
    @Autowired
    private UserService userService;
    @Autowired
    private DieticianService diteticianservice;
   
    @GetMapping("/home")
    public ModelAndView Home() {
        ModelAndView mv = new ModelAndView("home");
        mv.addObject("message", "Welcome to Home");
        return mv;
    }
    
    @GetMapping("/adminhome")
    public ModelAndView adminHome() {
        ModelAndView mv = new ModelAndView("adminhome");
        mv.addObject("message", "Welcome to Admin Dashboard");
        return mv;
    }
    @GetMapping("/adminlogin")
    public ModelAndView adminlogin() {
        ModelAndView mv = new ModelAndView("adminlogin");
        mv.addObject("message", "admin login");
        return mv;
    }
   
    @PostMapping("/adminlogin")
    public String adminLogin(@RequestParam("email") String email, 
                             @RequestParam("password") String password, 
                             Model model) {
       
        boolean isAuthenticated = adminService.authenticateAdmin(email, password);
        if (isAuthenticated) {
            return "redirect:/adminhome";
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "adminlogin";
        }
    }
    

    @GetMapping("/manageusers")
    public ModelAndView viewallusers() {
        ModelAndView mv = new ModelAndView("manageusers");
        mv.addObject("message", "Welcome to Admin Dashboard");
        return mv;
    } 

    @GetMapping("/viewallusers")
    public String viewAllUsers(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("viewallusers", users);
        return "viewallusers";  
    }
    
    @GetMapping("/deleteuser")
    public ModelAndView deleteUserPage() {
        ModelAndView mv = new ModelAndView("deleteuser");
        List<User> userList = userService.getAllUsers();
        mv.addObject("userList", userList);
        return mv;
    }

    @PostMapping("/deleteuser")
    public String deleteUser(@RequestParam("email") String email) {
        userService.deleteUser(email);  
        return "redirect:/viewallusers"; 
    }
    
    
    @GetMapping("/managedieticians")
    public ModelAndView viewAllDieticians() {
        ModelAndView mv = new ModelAndView("managedieticians");
        List<Dietician> dieticianList = diteticianservice.getAllDieticians();
        mv.addObject("dieticianList", dieticianList);
        return mv;
    }

    @GetMapping("/adddietician")
    public String addDieticianForm(Model model) {
        model.addAttribute("dietician", new Dietician());
        return "adddietician";
    }

    @PostMapping("/savedietician")
    public String saveDietician(
        @ModelAttribute("dietician") Dietician dietician,
        @RequestParam("pic") MultipartFile file,
        Model model
    ) {
        try {
           
            dietician.setPic(file.getBytes());

            
            diteticianservice.save(dietician);

            // Add success message
            model.addAttribute("message", "Dietician added successfully!");

        } catch (IOException e) {
            model.addAttribute("error", "Failed to save dietician. Please try again.");
            e.printStackTrace();
        }

        return "savedietician"; // Return to the success page
    }


    @GetMapping("/updatedietician")
    public ModelAndView updateDieticianPage() {
        ModelAndView mv = new ModelAndView("updatedietician");
        return mv;
    }

    @PostMapping("/updatedietician")
    public ModelAndView updateDieticianDetails(@ModelAttribute("dietician") Dietician dietician) {
        Dietician updatedDietician = diteticianservice.updateDietician(dietician);
        ModelAndView mv = new ModelAndView("dieticiansuccess");
        mv.addObject("message", "Dietician updated successfully!");
        return mv;
    }

    @GetMapping("/deletedietician")
    public ModelAndView deleteDieticianPage() {
        ModelAndView mv = new ModelAndView("deletedietician");
        return mv;
    }

    @PostMapping("/deletedietician")
    public String deleteDietician(@RequestParam("email") String email) {
        diteticianservice.deleteDietician(email);
        return "redirect:/managedieticians";
    }
    
    @GetMapping("/viewalldieticians")
    public String viewAlldieticians(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("viewalldieticians", users);
        return "viewalldieticians";  
    }
    

   
    @GetMapping("/logout")
    public String logout() {
        return "redirect:/adminlogin"; 
    }
}
