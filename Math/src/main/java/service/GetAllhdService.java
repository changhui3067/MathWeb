package service;

import Dao.dao.ActivitiesMapper;
import Dao.model.Activities;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2015/5/26.
 */
@Service
public class GetAllhdService {
    @Autowired(required = false)
    ActivitiesMapper hdmapper;

    public List<Activities> getAllhd(Integer hdCount){
        List<Activities> hdList;
        hdList = hdmapper.getAllhd(hdCount);

        return hdList;
    }
}
