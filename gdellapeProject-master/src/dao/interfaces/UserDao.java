package dao.interfaces;

import dao.data.DaoData;
import dao.exception.DaoException;
import model.User;

import java.util.List;

public interface UserDao extends DaoData {

  public User getUserByMail(String Mail);
  public User getUserByid(String Mail) throws DaoException;


}
