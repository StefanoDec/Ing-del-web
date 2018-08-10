package dao.implementation;

import dao.data.DaoDataMySQLImpl;
import dao.exception.DaoException;
import model.Admin;
import model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDaoImp  extends DaoDataMySQLImpl {

    private PreparedStatement selectAdminByID;
    private PreparedStatement selectAllAdmin;
    private PreparedStatement insertAdmin;

    @Override
    public void init() throws DaoException {
        try {

            super.init();


            this.selectAdminByID = connection.prepareStatement("SELECT * FROM  admin WHERE IDAdmin = ?");

            this.selectAllAdmin = connection.prepareStatement("SELECT * FROM Admin");

            this.insertAdmin = connection.prepareStatement("INSERT INTO admin(Nome,Cognome,IDUser) VALUES (?,?,?)");

        } catch (SQLException ex) {
            throw new DaoException("Error:PrepareStatement error", ex);

        }
    }

    public void setAdmin(Admin admin, User user) throws DaoException {
        try {
            this.init();
            this.insertAdmin.setString(1, admin.getNome());
            this.insertAdmin.setString(2, admin.getCognome());
            this.insertAdmin.setInt(3, user.getIDUser());
            insertAdmin.executeUpdate();
        } catch (SQLException e) {
            throw new DaoException("Errore inserimento", e);
        }
    }

    public Admin getAdminByID(int ID) throws DaoException {
        Admin admin = new Admin();
        try {
            this.init();

            this.insertAdmin.setInt(3, ID);
            ResultSet resultSet = insertAdmin.executeQuery();
            if (resultSet.next()) {
                admin.setIDadmin(resultSet.getInt("IDAdmin"));
                admin.setNome(resultSet.getString("Nome"));
                admin.setCognome(resultSet.getString("Cognome"));
            }
            return admin;

        } catch (SQLException e) {
            throw new DaoException("Errore query ", e);
        }
    }

    public void destroy() throws DaoException {

        try {

            selectAdminByID.close();
            selectAllAdmin.close();
            insertAdmin.close();

            super.destroy();

        } catch (SQLException ex) {
            ex.printStackTrace();

            throw new DaoException("Error close connection ", ex);


        }
    }
}
