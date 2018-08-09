package dao.implementation;

import dao.data.DaoDataMySQLImpl;
import dao.exception.DaoException;
import model.Azienda;
import model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AziendaDaoImp extends DaoDataMySQLImpl {

    private PreparedStatement selectAziendaByNome;
    //secondo me ci andrebbe un nome
    private PreparedStatement selectAziendaByRS;
    private PreparedStatement insertAzienda;
    private PreparedStatement selectAllAzienda;
    private PreparedStatement selectAziendaByID;


    @Override
    public void init() throws DaoException {
        try {

            super.init();

            this.selectAziendaByRS = connection.prepareStatement("SELECT * FROM azienda WHERE RagioneSociale = ?");

            this.selectAziendaByID = connection.prepareStatement("SELECT * FROM azienda WHERE IDAzienda = ?");

            this.selectAllAzienda = connection.prepareStatement("SELECT * FROM azienda");

            this.insertAzienda = connection.prepareStatement("INSERT INTO azienda(RagioneSociale,IndirizzoSedeLegale,CFiscalePIva,NomeLegaleRappresentante," +
                    "CognomeLegaleRappresentante,NomeResponsabileConvenzione,CognomeResponsabileConvenzione,TelefonoResponsabileConvenzione," +
                    "EmailResponsabileConvenzione, PathPDFConvenzione,IDUser ) VALUES (?,?,?,?,?,?,?,?,?,?,?)");

        } catch (SQLException ex) {
            throw new DaoException("Error:PrepareStatement error", ex);

        }
    }


    public void setAzienda(Azienda azienda, User user) throws DaoException {

        try {
            this.init();
            this.insertAzienda.setString(1, azienda.getRagioneSociale());
            this.insertAzienda.setString(2, azienda.getIndirizzoSedeLegale());
            this.insertAzienda.setString(3, azienda.getCFiscalePIva());
            this.insertAzienda.setString(4, azienda.getNomeLegaleRappresentante());
            this.insertAzienda.setString(5, azienda.getCognomeLegaleRappresentante());
            this.insertAzienda.setString(6, azienda.getNomeResponsabileConvenzione());
            this.insertAzienda.setString(7, azienda.getCognomeResponsabileConvenzione());
            this.insertAzienda.setString(8, azienda.getTelefonoResponsabileConvenzione());
            this.insertAzienda.setString(9, azienda.getEmailResponsabileConvenzione());
            this.insertAzienda.setString(10, azienda.getPathPDFConvenzione());
            this.insertAzienda.setInt(11, user.getIDUser());
            this.insertAzienda.executeUpdate();
        } catch (SQLException e) {
            throw new DaoException("Errore esecuzione update", e);
        }
    }

    public List<Azienda> getAziendaByRS(String RS) throws DaoException {

        List<Azienda> aziende = new ArrayList<Azienda>();


        try {
            this.init();
            this.selectAziendaByRS.setString(1, RS);
            ResultSet resultSet = this.selectAziendaByRS.executeQuery();

            while (resultSet.next()) {
                Azienda azienda = new Azienda();

                azienda.setIDAzienda(resultSet.getInt("IDAzienda"));
                azienda.setRagioneSociale(resultSet.getString("RagioneSociale"));
                azienda.setIndirizzoSedeLegale(resultSet.getString("IndirizzoSedeLegale"));
                azienda.setCFiscalePIva(resultSet.getString("CFiscalepiva"));
                azienda.setNomeLegaleRappresentante(resultSet.getString("NomeLegaleRappresentante"));
                azienda.setCognomeLegaleRappresentante(resultSet.getString("CognomeLegaleRappresentante"));
                azienda.setNomeResponsabileConvenzione(resultSet.getString("NomeResponsabileConvenzione"));
                azienda.setCognomeResponsabileConvenzione(resultSet.getString("CognomeResponsabileConvenzione"));
                azienda.setTelefonoResponsabileConvenzione(resultSet.getString("TelefonoResponsabileConvenzione"));
                azienda.setEmailResponsabileConvenzione(resultSet.getString("EmailResponsabileConvenzione"));
                azienda.setPathPDFConvenzione(resultSet.getString("PathPDFConvenzione"));

                aziende.add(azienda);

            }
            return aziende;


        } catch (SQLException e) {
            throw new DaoException("Errore update", e);
        }


    }


    public List<Azienda> getAllAzienda() throws DaoException

    {
        List<Azienda> aziende = new ArrayList<Azienda>();


        try {
            this.init();

            ResultSet resultSet = this.selectAllAzienda.executeQuery();

            while (resultSet.next()) {
                Azienda azienda = new Azienda();

                azienda.setIDAzienda(resultSet.getInt("IDAzienda"));
                azienda.setRagioneSociale(resultSet.getString("RagioneSociale"));
                azienda.setIndirizzoSedeLegale(resultSet.getString("IndirizzoSedeLegale"));
                azienda.setCFiscalePIva(resultSet.getString("CFiscalepiva"));
                azienda.setNomeLegaleRappresentante(resultSet.getString("NomeLegaleRappresentante"));
                azienda.setCognomeLegaleRappresentante(resultSet.getString("CognomeLegaleRappresentante"));
                azienda.setNomeResponsabileConvenzione(resultSet.getString("NomeResponsabileConvenzione"));
                azienda.setCognomeResponsabileConvenzione(resultSet.getString("CognomeResponsabileConvenzione"));
                azienda.setTelefonoResponsabileConvenzione(resultSet.getString("TelefonoResponsabileConvenzione"));
                azienda.setEmailResponsabileConvenzione(resultSet.getString("EmailResponsabileConvenzione"));
                azienda.setPathPDFConvenzione(resultSet.getString("PathPDFConvenzione"));

                aziende.add(azienda);

            }
            return aziende;



        } catch (SQLException e) {
            throw new DaoException("Errore query", e);
        }


    }

    public Azienda getAziendaByID(int ID) throws DaoException {
        Azienda azienda = new Azienda();
        try {
            this.selectAziendaByID.setInt(1, ID);
            ResultSet resultSet = selectAziendaByID.executeQuery();
            if (resultSet.next()) {
                azienda.setIDAzienda(resultSet.getInt("IDAzienda"));
                azienda.setRagioneSociale(resultSet.getString("RagioneSociale"));
                azienda.setIndirizzoSedeLegale(resultSet.getString("IndirizzoSedeLegale"));
                azienda.setCFiscalePIva(resultSet.getString("CFiscalepiva"));
                azienda.setNomeLegaleRappresentante(resultSet.getString("NomeLegaleRappresentante"));
                azienda.setCognomeLegaleRappresentante(resultSet.getString("CognomeLegaleRappresentante"));
                azienda.setNomeResponsabileConvenzione(resultSet.getString("NomeResponsabileConvenzione"));
                azienda.setCognomeResponsabileConvenzione(resultSet.getString("CognomeResponsabileConvenzione"));
                azienda.setTelefonoResponsabileConvenzione(resultSet.getString("TelefonoResponsabileConvenzione"));
                azienda.setEmailResponsabileConvenzione(resultSet.getString("EmailResponsabileConvenzione"));
                azienda.setPathPDFConvenzione(resultSet.getString("PathPDFConvenzione"));

            }
            return azienda;
        } catch (SQLException e) {
            throw new DaoException("Errore query azienda", e);
        }
    }


    public void destroy() throws DaoException {

        try {

            this.selectAziendaByRS.close();
            this.insertAzienda.close();
            this.selectAziendaByID.close();
            this.selectAllAzienda.close();


            super.destroy();

        } catch (SQLException ex) {
            ex.printStackTrace();

            throw new DaoException("Error destroy in azienda", ex);


        }

    }

}