package service;

import Dao.dao.NewsMapper;
import Dao.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2015/5/26.
 */
@Service
public class GetNewsService {
    @Autowired(required = false)
    NewsMapper newsmapper;

    public News getNews(short id){
        News news;
        news = newsmapper.selectByPrimaryKey(id);

        return news;
    }
}
