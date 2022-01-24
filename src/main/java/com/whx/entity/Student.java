package com.whx.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.util.Date;
import java.util.List;

/**
 * @author fishii
 * @date 2021/11/25
 * @apiNote
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Accessors(chain = true)
public class Student {
    private String  id;
    private String  name;
    private Integer age;
    private Date bir;
    private String phone;
    private String qq;
    private String attr;//生肖
    private String starts;//星座
    private String mark;//备注

    private String cityid;//城市id
    private String clazzid;//班级id
    private String groupid;//小组id

    private City city;
    private Clazz clazz;
    private Group group;
    private List<Tag> tags;
}
