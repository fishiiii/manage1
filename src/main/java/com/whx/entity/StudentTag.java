package com.whx.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

/**
 * @author fishii
 * @date 2021/11/27
 * @apiNote
 */
//学生标签实体对象--->t_student_tag表
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Accessors(chain = true)
public class StudentTag {
    private String id;
    private String studentid;
    private String tagid;
}
