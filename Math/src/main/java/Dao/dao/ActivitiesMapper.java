package Dao.dao;

import Dao.model.Activities;
import Dao.model.News;

import java.util.List;

public interface ActivitiesMapper {
    int deleteByPrimaryKey(Short id);

    int insert(Activities record);

    int insertSelective(Activities record);

    Activities selectByPrimaryKey(Short id);

    int updateByPrimaryKeySelective(Activities record);

    int updateByPrimaryKey(Activities record);

    List<Activities> getAllhd(Integer count);
}