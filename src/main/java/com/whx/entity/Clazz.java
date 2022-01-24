package com.whx.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

/**
 * @author fishii
 * @date 2021/11/24
 * @apiNote
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Accessors(chain = true)
public class Clazz {
    private String id;
    private String name;
    private String tagid;//标签外键
    private Tag tag;
}
