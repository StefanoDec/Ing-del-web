package dao.implementation;

import dao.data.DaoDataMySQLImpl;
import dao.exception.DaoException;
import dao.interfaces.UserDao;
import model.User;

import java.lang.ref.PhantomReference;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImp extends DaoDataMySQLImpl {

    private PreparedStatement selectUserByEmail;
    private PreparedStatement selectUserById;


    @Override
    public void init() throws DaoException {
        try {
            super.init();
            this.selectUserByEmail = connection.prepareStatement("SELECT * FROM user WHERE Email = ?");
            this.selectUserById = connection.prepareStatement("SELECT * FROM user WHERE Id = ?");
        } catch (SQLException ex) {
            throw new DaoException("Error:PrepareStatement error", ex);
        }
    }

    public User getUserByMail(String mail) throws DaoException {
        User user = new User();
        try {
            this.selectUserByEmail.setString(1,mail);
            ResultSet resultSet = this.selectUserByEmail.executeQuery();
            if (resultSet.next()) {
                user.setIDUser(resultSet.getInt("Id"));
                user.setEmail(resultSet.getString("Email"));
                user.setPassword(resultSet.getString("Password"));
                user.setTipologiaAccount(resultSet.getInt("TipologiaAccount"));

            }
        } catch (SQLException ex) {
            throw new DaoException("Errore esecuzione query", ex);
        }
        return user;

    }




    public User getUserByid(int id) throws DaoException {
        User user = new User();
        try {
            this.selectUserByEmail.setInt(1,id);
            ResultSet resultSet = this.selectUserByEmail.executeQuery();
            if (resultSet.next()) {
                user.setIDUser(resultSet.getInt("Id"));
                user.setEmail(resultSet.getString("Email"));
                user.setPassword(resultSet.getString("Password"));
                user.setTipologiaAccount(resultSet.getInt("TipologiaAccount"));

            }
        } catch (SQLException ex) {
            throw new DaoException("Errore esecuzione query", ex);
        }
        return user;

    }

    @Override
    public void destroy() throws DaoException {

        try {

            this.selectUserByEmail.close();


            super.destroy();

        } catch (SQLException e) {
            e.printStackTrace();

            throw new DaoException("Error destroy in BookDao", e);


        }

    }
}