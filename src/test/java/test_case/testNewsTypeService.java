package test_case;

import bean.NewsType;
import org.junit.Test;
import service.NewsTypeService;

import java.util.List;

/**
 * @author xiaojian
 * @create 2018-09-11-22:37
 */
public class testNewsTypeService {

    @Test
    public void testGetAll(){
        NewsTypeService service = new NewsTypeService();
        List<NewsType> list = service.getAll();
        for (NewsType newsType : list) {
            System.out.println(newsType.toString());
        }
    }
}
