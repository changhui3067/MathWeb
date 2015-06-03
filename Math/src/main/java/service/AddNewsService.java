package service;

import Dao.dao.NewsMapper;
import Dao.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2015/5/28.
 */
@Service
public class AddNewsService {
    @Autowired(required = false)
    NewsMapper newsmapper;

    public int addNews(News news){

        int value = newsmapper.insert(news);

        return value;
    }
}
