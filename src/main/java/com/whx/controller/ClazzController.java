package com.whx.controller;

import com.whx.entity.Clazz;
import com.whx.service.ClazzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/24
 * @apiNote
 */
@Controller
@RequestMapping("clazz")
public class ClazzController {
    @Autowired
    private ClazzService clazzService;

    //查询城市列表
    @RequestMapping("findAll")
    public String findAll(Model model){
        List<Clazz> clazzes=clazzService.findAll();
        //System.out.println("clazzes = " + clazzes);
        model.addAttribute("clazzes",clazzes);
        return "head/pages/clazz-list";
    }

    @RequestMapping("save")
    public String save(Clazz clazz){
        clazzService.save(clazz);
        return "redirect:/clazz/findAll";
    }

    @RequestMapping("findAllClazzJSON")
    @ResponseBody
    public List<Clazz> findAllClazzJSON(){
        return clazzService.findAll();
    }
}
