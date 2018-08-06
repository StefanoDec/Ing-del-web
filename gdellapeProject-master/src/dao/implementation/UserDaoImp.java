package dao.implementation;

import dao.data.DaoDataMySQLImpl;
import dao.exception.DaoException;
import dao.interfaces.UserDao;
import model.User;

import java.lang.ref.PhantomReference;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImp extends DaoDataMySQLImpl {

    private PreparedStatement selectUserByEmail;
    private PreparedStatement selectUserById;
    private PreparedStatement insertUser;


    @Override
    public void init() throws DaoException {
        try {

            super.init();

            this.selectUserByEmail = connection.prepareStatement("SELECT * FROM user WHERE Email = ?");

            this.selectUserById = connection.prepareStatement("SELECT * FROM user WHERE IDuser = ?");

            this.insertUser = connection.prepareStatement("INSERT INTO user(Email,Password,TipologiaAccount) VALUES (?,?,?)");

        } catch (SQLException ex) {
         throw new DaoException("Error:PrepareStatement error", ex);

        }
    }


//    @Override
//    public User getUser() {return new User(this);}


//    @Override
    public User getUserByMail(String mail) throws DaoException {
        User user = new User();

        try {
            this.init();
            this.selectUserByEmail.setString(1,mail);
            ResultSet resultSet = this.selectUserByEmail.executeQuery();
            if (resultSet.next()) {
                user.setIDUser(resultSet.getInt("Id"));
                user.setEmail(resultSet.getString("Email"));
                user.setPassword(resultSet.getString("Password"));
                user.setTipologiaAccount(resultSet.getInt("TipologiaAccount"));

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            throw new DaoException("Errore esecuzione query", ex);

        }
        return user;

    }




    public User getUserByid(int id) throws DaoException {
        User user = new User();
        try {
            this.init();
            this.selectUserById.setInt(1,id);
            ResultSet resultSet = this.selectUserById.executeQuery();
           //dobbiamo vedere se è null
            if (resultSet.next()) {
                user.setIDUser(resultSet.getInt("IDuser"));
                user.setEmail(resultSet.getString("Email"));
                user.setPassword(resultSet.getString("Password"));
                user.setTipologiaAccount(resultSet.getInt("TipologiaAccount"));

            }else {return null;}
        } catch (SQLException ex) {
            ex.printStackTrace();
            throw new DaoException("Errore esecuzione query", ex);

        }
        return user;

    }
    public void setUser(User user) throws DaoException {

        try {
            this.init();
            this.insertUser.setString(1, user.getEmail());
            this.insertUser.setString(2, user.getPassword());
            this.insertUser.setInt(3, user.getTipologiaAccount());
            this.insertUser.executeUpdate();

        } catch (SQLException ex) {

            throw new DaoException("Errore esecuzione query", ex);

        }
    }



    public void destroy() throws DaoException {

        try {

            this.selectUserByEmail.close();
            this.insertUser.close();
            this.selectUserById.close();


            super.destroy();

        } catch (SQLException ex) {
            ex.printStackTrace();

            throw new DaoException("Error destroy in BookDao", ex);


        }

    }
}