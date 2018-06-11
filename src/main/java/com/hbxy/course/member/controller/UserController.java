package com.hbxy.course.member.controller;

import com.hbxy.course.member.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    @RequestMapping("/selectUser")
    public String selectUser(Integer id, Model model){
        /*StringBuilder msg=new StringBuilder();
        msg.append("选择的用户ID为：<br />");*/

        StringBuilder msg=new StringBuilder();
        msg.append("选择的用户ID为:<br />");
        msg.append("id="+id);
        model.addAttribute("msg",msg.toString());
        return "success";

    }
    //跳转到用户注册页面
    @RequestMapping("/toRegister")
    public String toRegister(){
        return "registeruser";
    }

    //注册用户，提交到数据
    @RequestMapping("/registerUser")
    public String  registerUser(User user,Model model){
        Integer id= user.getId();
        String name=user.getName();
        String sex=user.getSex();
        String email=user.getEmail();

        StringBuilder msg=new StringBuilder();
        msg.append("用户信息：<br />");
        msg.append("id="+id+"<br />");
        msg.append("name="+name+"<br />");
        msg.append("sex="+sex+"<br />");
        msg.append("email="+email+"<br />");

        model.addAttribute("msg",user.toString());
        return "success";
    }
    @RequestMapping("/touserlist")
    public String touserlist(){
        return "userlist";

    }

    //批量删除用户
    @RequestMapping("/deleteUsers")
    public  String deleteUsers(int[] ids, Model model){
        String msg="";
        for (int id :ids){
            msg=msg+","+id;
        }
        model.addAttribute("msg",msg);
        return "success";
    }


}
