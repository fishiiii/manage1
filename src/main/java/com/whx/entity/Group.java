package com.whx.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

/**
 * @author fishii
 * @date 2021/11/25
 * @apiNote
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Accessors(chain=true)
public class Group {
    private String id;
    private String name;
    private String content;
    private String clazzid;

    private Clazz clazz;//用来保存当前小组班级信息
}
