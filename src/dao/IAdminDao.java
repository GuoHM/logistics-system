package dao;

public interface IAdminDao {
Admin getAdminByIDAndPwd(String id,String pwd) throws Exception;

}
