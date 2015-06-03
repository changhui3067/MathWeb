package Dao.dao;

import Dao.model.Competitions;
import Dao.model.News;

import java.util.List;

public interface CompetitionsMapper {
    int deleteByPrimaryKey(Short id);

    int insert(Competitions record);

    int insertSelective(Competitions record);

    int updateByPrimaryKeySelective(Competitions record);

    int updateByPrimaryKey(Competitions record);

    List<Competitions> getAlljs(Integer count);

    Competitions selectByPrimaryKey(Short id);
}