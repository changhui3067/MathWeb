package service;

import Dao.model.Activities;
import Dao.model.News;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

/**
 * Created by Administrator on 2015/5/28.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/mvc-dispatcher-servlet.xml","file:src/main/webapp/WEB-INF/spring-mybatis.xml"})

public class AddhdServiceTest {
    @Autowired(required = false)
    AddhdService addhdService;
    @Test
    public void setAddhdService(){
        Activities hd = new Activities();
        hd.setTitle("test");
        hd.setContent("it is a test by test");
        int result = addhdService.addHd(hd);

        assert result!=0;
    }
}

