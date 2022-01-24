package com.whx.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * @author fishii
 * @date 2021/11/23
 * @apiNote
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Accessors(chain = true)
public class Tag {
    private String id;
    private String name;
    private String type;
    private Date createtime;
}
