package service;

import Dao.dao.ActivitiesMapper;
import Dao.dao.IntroductionMapper;
import Dao.model.Activities;
import Dao.model.Introduction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2015/5/26.
 */
@Service
public class GetIntroService {
    @Autowired(required = false)
    IntroductionMapper intromapper;

    public Introduction getIntro(short id){
        Introduction intro;
        intro = intromapper.selectByPrimaryKey(id);

        return intro;
    }
}
