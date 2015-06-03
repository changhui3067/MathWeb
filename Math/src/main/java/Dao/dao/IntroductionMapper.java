package Dao.dao;

import Dao.model.Introduction;

public interface IntroductionMapper {
    int deleteByPrimaryKey(Short introid);

    int insert(Introduction record);

    int insertSelective(Introduction record);

    Introduction selectByPrimaryKey(Short introid);

    int updateByPrimaryKeySelective(Introduction record);

    int updateByPrimaryKey(Introduction record);
}