package service.impl;

import dao.CustomerDao;
import dao.impl.CustomerDaoImpl;
import model.Customer;
import service.CustomerService;
import utils.MailUtils;
import utils.UuidUtil;

/**
 * @Author：Weiyu
 * @Version:
 * @Since:
 * @date：2021-12-06_周一 14:22
 **/
public class CustomerServiceImpl implements CustomerService {

    CustomerDao customerDao=new CustomerDaoImpl();
    /**
     * 注册用户：根据用户名查询用户是否存在，不存在发送邮件激活用户
     * @param customer
     * @return
     */
    @Override
    public boolean register(Customer customer) {
        //1.根据用户名查询用户对象
        Customer cu = customerDao.findCustomerByName(customer.getName());
        //判断u是否为null
        if(cu != null){
            //用户名存在，注册失败
            return false;
        }
        //2.保存用户信息
        //2.1设置激活码，唯一字符串
        customer.setUuid(UuidUtil.getUuid());
        //2.2设置激活状态
        customer.setStatus(0);
        customerDao.register(customer);

        //3.激活邮件发送，邮件正文？
        String content="Hi，"+customer.getName()+",欢迎来到蜀地餐厅!!<a href='http://localhost:8081/rest/customer/active?code="+customer.getUuid()+"'>点击激活您的账户</a>";
        MailUtils.sendMail(customer.getEmail(),content,"激活邮件");

        return true;
    }


    @Override
    public boolean active(String code) {
        //1.根据激活码查询用户对象
        Customer customer = customerDao.findByCode(code);
        if(customer != null){
            //2.调用dao的修改激活状态的方法
            customerDao.updateStatus(customer);
            return true;
        }else{
            return false;
        }
    }

    @Override
    public Customer login(Customer customer) {
        System.out.println(customer);
        return customerDao.login(customer.getName(),customer.getPassword());
    }
}
