package com.whx.controller;

import com.whx.entity.Tag;
import com.whx.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/23
 * @apiNote
 */
@Controller
@RequestMapping("tag")
public class TagController {
    @Autowired
    private TagService tagService;

    //查询标签列表
    @RequestMapping("findAll")
    public String findAll(Model model){
        List<Tag> tags=tagService.findAll();
        System.out.println("tags = " + tags);
        model.addAttribute("tags",tags);
        return "head/pages/tag-list";
    }

    //添加标签
    @RequestMapping("save")
    public String save(Tag tag){
        tagService.save(tag);
        return "redirect:/tag/findAll";
        //  return "redirect:findAll";
    }

    //根据标签的类型查询对应的标签信息
    @RequestMapping("findByType")
    @ResponseBody//返回json类型的值，因为该请求时ajax请求
    public List<Tag> findByType(String type){
        return tagService.findByType(type);
    }
}
