package service;

import Dao.dao.CompetitionsMapper;
import Dao.model.Competitions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2015/5/28.
 */
@Service
public class AddjsService {
    @Autowired(required = false)
    CompetitionsMapper competitionsMapper;

    public int addJs(Competitions js){
        int result = competitionsMapper.insert(js);
        return result;
    }
}
