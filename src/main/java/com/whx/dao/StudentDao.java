package com.whx.dao;

import com.whx.entity.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/25
 * @apiNote
 */
@Mapper
public interface StudentDao extends BaseDao<Student, String> {
    List<Student> findAll(@Param("start") Integer start,@Param("rows") Integer rows,@Param("col") String searchCol, @Param("val") String searchValue);
    //根据条件查询学生的总记录数
    Integer counts(@Param("col") String searchCol, @Param("val") String searchValue);
    void deleteById(String studentId);
    void modify(Student student);
}
