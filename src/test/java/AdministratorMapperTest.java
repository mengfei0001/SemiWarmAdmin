import cn.semiwarm.admin.entity.Administrator;
import cn.semiwarm.admin.mapper.AdministratorMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.Timestamp;
import java.util.UUID;

/**
 * 管理员测试类
 * Created by alibct on 2017/3/10.
 */
@RunWith(SpringJUnit4ClassRunner.class) // 注入Spring测试类
@ContextConfiguration("classpath:spring/spring-*.xml") // 注入Spring的所有配置文件，如果没有配置对会出现'failed load context application'的错误，如果出现请把之前的两个教程中的配置文件好好查看一下
public class AdministratorMapperTest {
    // 注入AdministratorMapper接口
    @Autowired
    private AdministratorMapper administratorMapper;

    // 标记为测试类
    @Test
    public void testAdd() { // 光标放在这里右键'Debug'，然后看控制台的打印日志，出现添加成功后就OK了
        Administrator admin = new Administrator();
        admin.setAdminId(UUID.randomUUID().toString());
        admin.setAdminName("admin");
        admin.setPassword("941001");
        admin.setPrivilegeLevel(10);
        admin.setStatus(true);
        admin.setCreateTime(new Timestamp(System.currentTimeMillis()));

        int result;
        result = administratorMapper.add(admin);

        if (result > 0) {
            System.out.println("添加成功！");
        } else {
            System.out.println("添加失败！");
        }
    }
}