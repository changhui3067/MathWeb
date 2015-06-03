package service;

import Dao.dao.CompetitionsMapper;
import Dao.model.Competitions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2015/5/26.
 */
@Service
public class GetAlljsService {
    @Autowired(required = false)
    CompetitionsMapper jsmapper;

    public List<Competitions> getAlljs(Integer jsCount){
        List<Competitions> jsList;
        jsList = jsmapper.getAlljs(jsCount);

        return jsList;
    }
}
