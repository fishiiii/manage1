package com.whx.service;

import com.whx.entity.Student;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/25
 * @apiNote
 */
public interface StudentService {
    //查询所有
    List<Student> findAll(Integer page,Integer rows,String searchCol,String searchValue);

    //根据条件查询学生的总记录数
    Integer counts(String searchCol,String searchValue);

    //保存学生信息同时保存学生标签信息
    void save(Student student,String[] tagIds);

    void del(String studentId);

    void modify(Student student);
}
