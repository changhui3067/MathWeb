package service;

import Dao.dao.IntroductionMapper;
import Dao.model.Introduction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2015/5/28.
 */
@Service
public class UpdateIntroService {
    @Autowired(required = false)
    IntroductionMapper introductionMapper;

    public int updateIntro(Introduction intro){
        int result = introductionMapper.updateByPrimaryKey(intro);
        return result;
    }
}
