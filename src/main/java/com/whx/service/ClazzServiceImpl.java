package com.whx.service;

import com.whx.dao.ClazzDao;
import com.whx.entity.Clazz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/24
 * @apiNote
 */
@Service
@Transactional
public class ClazzServiceImpl implements ClazzService {

    @Autowired
    private ClazzDao clazzDao;

    @Override
    public List<Clazz> findAll() {
        return clazzDao.findAll();
    }

    @Override
    public void save(Clazz clazz) {
        clazzDao.save(clazz);
    }
}
