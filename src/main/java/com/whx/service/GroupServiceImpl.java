package com.whx.service;

import com.whx.dao.GroupDao;
import com.whx.entity.Group;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/25
 * @apiNote
 */
@Service
@Transactional
public class GroupServiceImpl implements GroupService {
    @Autowired
    private GroupDao groupDao;

    @Override
    public List<Group> findAll() {
        return groupDao.findAll();
    }

    @Override
    public void save(Group group) {
        groupDao.save(group);
    }

    @Override
    public List<Group> findByClazzId(String id) {
        return groupDao.findByClazzId(id);
    }
}
