package com.whx.controller;

import com.whx.entity.Student;
import com.whx.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/25
 * @apiNote
 */
@Controller
@RequestMapping("student")
public class StudentController {
    @Autowired
    private StudentService studentService;

    //查询学生列表
    @RequestMapping("findAll")
    public String findAll(Integer page, String searchCol, String searchValue, Model model) {
        //获取当前要查询的页数（当前页）
        page=page==null?1:page;
        //每页显示的行数
        Integer rows=10;
        //获取选中的条件字段和输入的值
        //在调用查询业务层的时候传递当前页
        List<Student> students=studentService.findAll(page,rows,searchCol,searchValue);

        //获取总记录
        Integer counts = studentService.counts(searchCol, searchValue);
        //获取总页数
        Integer pages=counts%rows==0?counts/rows:counts/rows+1;
        //model作用域类型request
        model.addAttribute("students",students);
        model.addAttribute("page",page);
        model.addAttribute("pages",pages);
        model.addAttribute("counts",counts);
        //设置searchCol和searchValue在request域中进行数据的回显
        model.addAttribute("searchCol", searchCol);
        model.addAttribute("searchValue", searchValue);
        return "head/pages/student-list";
    }

    //学生添加方法
    @RequestMapping("save")
    public String save(Student student, String[] tagIds) {
        //添加学生信息的同时传递当前对应的标签
        studentService.save(student,tagIds);
        return "redirect:/student/findAll";

    }

    @RequestMapping("/del/{studentId}")
    public String del(@PathVariable("studentId") String studentId) {
        studentService.del(studentId);
        return"redirect:/student/findAll";
    }

    @RequestMapping("modify")
    public String modify(Student student) {
        studentService.modify(student);
        return "redirect:/student/findAll";
    }
}
