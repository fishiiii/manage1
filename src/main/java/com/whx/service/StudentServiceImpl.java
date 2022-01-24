package com.whx.service;

import com.whx.dao.CityDao;
import com.whx.dao.StudentDao;
import com.whx.dao.StudentTagDao;
import com.whx.entity.City;
import com.whx.entity.Student;
import com.whx.entity.StudentTag;
import com.whx.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.List;

/**
 * @author fishii
 * @date 2021/11/25
 * @apiNote
 */
@Service
@Transactional
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentDao studentDao;
    @Autowired
    private StudentTagDao studentTagDao;
    @Autowired
    private CityDao cityDAO;

    @Override
    public List<Student> findAll(Integer page,Integer rows,String searchCol,String searchValue) {
        //通过当前页获取limit开始的下标
        Integer start=(page-1)*rows;
        return studentDao.findAll(start,rows,searchCol,searchValue);
    }

    @Override
    public Integer counts(String searchCol, String searchValue) {
        return studentDao.counts(searchCol, searchValue);
    }

    @Override
    public void save(Student student,String[] tagIds) {
        //计算年龄
        int age = DateUtil.getAge(student.getBir());
        student.setAge(age);
        //计算生肖和星座
        String attr = DateUtil.getYear(Integer.valueOf(new SimpleDateFormat("yyyy").format(student.getBir())));
        student.setAttr(attr);
        String starts = DateUtil.getConstellation(student.getBir());
        student.setStarts(starts);
        //保存学生
        studentDao.save(student);
        //保存学生标签信息
        for (String tagId : tagIds) {
            StudentTag studentTag = new StudentTag();
            studentTag.setStudentid(student.getId());
            studentTag.setTagid(tagId);
            studentTagDao.save(studentTag);
        }
        //通过城市id获取对应的城市信息
        City city = cityDAO.findById(student.getCityid());
        //更新城市人数信息
        city.setNumbers(city.getNumbers()+1);
        cityDAO.update(city);
    }

    @Override
    public void del(String studentId) {
        studentDao.deleteById(studentId);
    }

    @Override
    public void modify(Student student) {
        studentDao.modify(student);
    }


}
