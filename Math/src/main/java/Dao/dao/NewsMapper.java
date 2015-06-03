package Dao.dao;

import Dao.model.News;

import java.util.List;

public interface NewsMapper {
    int deleteByPrimaryKey(Short id);

    int insertSelective(News record);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);

    List<News> getAllNews(Integer count);
    News selectByPrimaryKey(short id);
    int insert(News record);

}