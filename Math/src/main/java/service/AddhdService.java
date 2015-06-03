package service;

import Dao.dao.ActivitiesMapper;
import Dao.model.Activities;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2015/5/28.
 */
@Service
public class AddhdService {
    @Autowired(required = false)
    ActivitiesMapper hdmapper;

    public int addHd(Activities hd){
        int value = hdmapper.insert(hd);
        return value;
    }
}
