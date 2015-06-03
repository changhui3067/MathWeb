package service;

import java.util.Date;
import java.util.List;

import Dao.dao.NewsMapper;
import Dao.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class GetAllNewsService {
	@Autowired(required = false)
	NewsMapper newsmapper;
	
	public List<News> getAllNews(Integer newsCount){
		List<News> newsList;
        newsList = newsmapper.getAllNews(newsCount);

        return newsList;
	}

}
