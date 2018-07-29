package com.hhit.controller;

import com.hhit.model.User;
import com.hhit.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/UserController")
public class UserController {

    User user=new User();
    @Resource
    private UserService userService;

    /**
     * 这个是服务器端图形界面登陆使用
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/mlogin")
    @ResponseBody
    public Map<String,Object> mlogin(HttpServletRequest request) throws Exception{
        Map<String,Object> map=new HashMap<String, Object>();
        System.out.println("查看用户名"+request.getParameter("username"));
        System.out.println("密码"+request.getParameter("password"));
        if (request.getParameter("username")==null){
            map.put("msg","wrong");
        }else {
           user=userService.selectByusername(request.getParameter("username"));
            if (user==null){
                map.put("msg","wrong");
            }else {
                if (user.getPassword().equals(request.getParameter("password"))){
                    HttpSession session=request.getSession();
                    session.setAttribute("username",user.getUsername());//存放session的值
                    map.put("msg","success");
                }else {
                    map.put("msg","wrong");
                }
            }
        }
        return map;
    }
}
