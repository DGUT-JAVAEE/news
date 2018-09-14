package test_case;

import bean.Authority;
import org.junit.Test;
import service.AuthorityService;

import java.util.List;

/**
 * @author xiaojian
 * @create 2018-09-11-22:16
 */
public class testAuthorityService {

    @Test
    public void testGetAll(){
        AuthorityService service = new AuthorityService();
        List<Authority> list = service.getAll();
        for (Authority authority : list) {
            System.out.println(authority.toString());
        }
    }

}
