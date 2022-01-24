package com.whx.controller;

import com.whx.entity.Group;
import com.whx.service.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/25
 * @apiNote
 */
@Controller
@RequestMapping("group")
public class GroupController {
    @Autowired
    private GroupService groupService;

    @RequestMapping("findAll")
    public String findAll(Model model){
        List<Group> groups=groupService.findAll();
        //System.out.println("groups = " + groups);
        model.addAttribute("groups",groups);
        return "head/pages/group-list";
    }

    //添加小组
    @RequestMapping("save")
    public String save(Group group){
        groupService.save(group);
        return "redirect:/group/findAll";
    }

    //根据班级id查询小组信息
    @RequestMapping("findByClazzId")
    @ResponseBody
    public List<Group> findByClazzId(String id){
        return groupService.findByClazzId(id);
    }
}
