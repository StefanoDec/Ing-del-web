package dao.implementation;

import dao.data.DaoDataMySQLImpl;
import dao.exception.DaoException;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AdminDaoImp  extends DaoDataMySQLImpl {

    private PreparedStatement selectAdminByID;
    private PreparedStatement selectAllAdmin;
    private PreparedStatement insertAdmin;

    @Override
    public void init() throws DaoException {
        try {

            super.init();



            this.selectAdminByID = connection.prepareStatement("SELECT * FROM  WHERE IDAzienda = ?");

            this.selectAllAdmin = connection.prepareStatement("SELECT * FROM azienda");

            this.insertAdmin = connection.prepareStatement("INSERT INTO azienda(RagioneSociale,IndirizzoSedeLegale,CFiscalePIva,NomeLegaleRappresentante," +
                    "CognomeLegaleRappresentante,NomeResponsabileConvenzione,CognomeResponsabileConvenzione,TelefonoResponsabileConvenzione," +
                    "EmailResponsabileConvenzione, PathPDFConvenzione,IDUser ) VALUES (?,?,?,?,?,?,?,?,?,?,?)");

        } catch (SQLException ex) {
            throw new DaoException("Error:PrepareStatement error", ex);

        }
    }
}
