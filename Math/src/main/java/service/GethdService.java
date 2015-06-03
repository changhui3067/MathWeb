package service;

import Dao.dao.ActivitiesMapper;
import Dao.dao.NewsMapper;
import Dao.model.Activities;
import Dao.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2015/5/26.
 */
@Service
public class GethdService {
    @Autowired(required = false)
    ActivitiesMapper hdmapper;

    public Activities getHd(short id){
        Activities hd;
        hd = hdmapper.selectByPrimaryKey(id);

        return hd;
    }
}
