package service;

import Dao.dao.CompetitionsMapper;
import Dao.dao.NewsMapper;
import Dao.model.Competitions;
import Dao.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2015/5/26.
 */
@Service
public class GetjsService {
    @Autowired(required = false)
    CompetitionsMapper jsmapper;

    public Competitions getJs(short id){
        Competitions js;
        js = jsmapper.selectByPrimaryKey(id);

        return js;
    }
}
