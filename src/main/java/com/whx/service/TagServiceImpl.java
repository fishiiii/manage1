package com.whx.service;

import com.whx.dao.TagDao;
import com.whx.entity.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @author fishii
 * @date 2021/11/23
 * @apiNote
 */
@Service
@Transactional
public class TagServiceImpl implements TagService {

    @Autowired
    private TagDao tagDao;

    @Override
    public List<Tag> findAll() {
        return tagDao.findAll();
    }

    @Override
    public void save(Tag tag) {
        tag.setCreatetime(new Date());
        tagDao.save(tag);
    }

    @Override
    public List<Tag> findByType(String type) {
        return tagDao.findByType(type);
    }
}
