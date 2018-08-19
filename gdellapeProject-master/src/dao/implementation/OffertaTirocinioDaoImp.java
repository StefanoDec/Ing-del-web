package dao.implementation;

import dao.data.DaoDataMySQLImpl;
import dao.exception.DaoException;
import model.Azienda;
import model.OffertaTirocinio;
import model.TutoreUniversitario;

import java.sql.Date;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class OffertaTirocinioDaoImp extends DaoDataMySQLImpl {
    private PreparedStatement selectOffertatrByID;
    private PreparedStatement insertOffertatr;
    private PreparedStatement selectAllOfferteditr;//le metto gia in ordine dal più nuovo al vecchio
    private PreparedStatement selectOffertetrByAzienda;


    @Override
    public void init() throws DaoException {
        try {

            super.init();

            this.selectOffertatrByID = connection.prepareStatement("SELECT * FROM offertatirocinio WHERE IDOffertaTirocinio = ?");

            this.selectAllOfferteditr = connection.prepareStatement("SELECT * FROM offertatirocinio ORDER BY UpdateDate ASC ");

            this.selectOffertetrByAzienda = connection.prepareStatement("SELECT * FROM offertatirocinio WHERE  Azienda = ? ORDER BY UpdateDate ASC ");


            this.insertOffertatr = connection.prepareStatement("INSERT INTO offertatirocinio(Titolo,DescrizioneBreve,Descrizione,Orari," +
                    "DurataOre,DurataMesi,PeriodoInizio,PeriodoFine,Modalita,Obbiettivi,Rimborsi,Facilitazioni,AziendaOspitante,CodIdentTirocinio,SettoreInserimento,TempoAccessoLocaliAziendali,NomeTutoreAziendale," +
                    "CognomeTutoreAziendale,TelefonoTutoreAziendale,EmailTutoreAziendale" +
                    "CreateDate,UpdateDate,Azienda,TutoreUniversitario  ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

        } catch (SQLException ex) {
            throw new DaoException("Error:PrepareStatement error", ex);

        }
    }

    public OffertaTirocinio getOffertatrByID(int ID) throws DaoException {
        try {
            OffertaTirocinio oftr = new OffertaTirocinio();
            this.init();
            selectOffertatrByID.setInt(1, ID);
            ResultSet resultSet = selectOffertatrByID.executeQuery();
            if (resultSet.next()) {
                oftr.setIDOffertaTirocinio(resultSet.getInt("IDOffertaTirocinio"));
                oftr.setTitolo(resultSet.getString("Titolo"));
                oftr.setDescrizioneBreve(resultSet.getString("DescrizioneBreve"));
                oftr.setDescrizione(resultSet.getString("Descrizione"));
                oftr.setOrario(resultSet.getString("Orari"));
                oftr.setDurataOra(resultSet.getInt("DurataOre"));
                oftr.setDurataMesi(resultSet.getInt("DurataMesi"));
                oftr.setPeriodoInizio(resultSet.getDate("PeriodoInizio"));
                oftr.setPeriodoFine(resultSet.getDate("PeriodoFine"));
                oftr.setModalita(resultSet.getString("Modalita"));
                oftr.setObbiettivi(resultSet.getString("Obbiettivi"));
                oftr.setRimborsi(resultSet.getString("Rimborsi"));
                oftr.setFacilitazioni(resultSet.getString("Facilitazioni"));
                oftr.setAziendaOspitante(resultSet.getString("AziendaOspitante"));
                oftr.setCodiceTirocinio(resultSet.getInt("CodIdentTirocinio"));
                oftr.setSettoreInserimento(resultSet.getString("SettoreInserimento"));
                oftr.setTempoAccessoLocaliAziendali(resultSet.getString("TempoAccessoLocaliAziendali"));
                oftr.setNomeTutoreAziendale(resultSet.getString("NomeTutoreAziendale"));
                oftr.setCognomeTutoreAziendale(resultSet.getString("CognomeTutoreAziendale"));
                oftr.setTelefonoTutoreAzindale(resultSet.getString("TelefonoTutoreAziendale"));
                oftr.setEmailTutoreAzindale(resultSet.getString("EmailTutoreAziendale"));
                oftr.setAzienda(resultSet.getInt("Azienda"));
                oftr.setTutoreUniversitario(resultSet.getInt("TutoreUniversitario"));

            }
            return oftr;


        } catch (SQLException e) {
            throw new DaoException("Errore query inserimento dati", e);
        }
    }
    public List<OffertaTirocinio> getOffertatrBYAzienda(Azienda az)throws DaoException{
        List<OffertaTirocinio> Offerte = new ArrayList<OffertaTirocinio>();
        OffertaTirocinio oftr = new OffertaTirocinio();
        try {
            this.init();
            selectOffertetrByAzienda.setInt(1,az.getIDAzienda());
            ResultSet resultSet = selectOffertetrByAzienda.executeQuery();
            while (resultSet.next()) {
                oftr.setIDOffertaTirocinio(resultSet.getInt("IDOffertaTirocinio"));
                oftr.setTitolo(resultSet.getString("Titolo"));
                oftr.setDescrizioneBreve(resultSet.getString("DescrizioneBreve"));
                oftr.setDescrizione(resultSet.getString("Descrizione"));
                oftr.setOrario(resultSet.getString("Orari"));
                oftr.setDurataOra(resultSet.getInt("DurataOre"));
                oftr.setDurataMesi(resultSet.getInt("DurataMesi"));
                oftr.setPeriodoInizio(resultSet.getDate("PeriodoInizio"));
                oftr.setPeriodoFine(resultSet.getDate("PeriodoFine"));
                oftr.setModalita(resultSet.getString("Modalita"));
                oftr.setObbiettivi(resultSet.getString("Obbiettivi"));
                oftr.setRimborsi(resultSet.getString("Rimborsi"));
                oftr.setFacilitazioni(resultSet.getString("Facilitazioni"));
                oftr.setAziendaOspitante(resultSet.getString("AziendaOspitante"));
                oftr.setCodiceTirocinio(resultSet.getInt("CodIdentTirocinio"));
                oftr.setSettoreInserimento(resultSet.getString("SettoreInserimento"));
                oftr.setTempoAccessoLocaliAziendali(resultSet.getString("TempoAccessoLocaliAziendali"));
                oftr.setNomeTutoreAziendale(resultSet.getString("NomeTutoreAziendale"));
                oftr.setCognomeTutoreAziendale(resultSet.getString("CognomeTutoreAziendale"));
                oftr.setTelefonoTutoreAzindale(resultSet.getString("TelefonoTutoreAziendale"));
                oftr.setEmailTutoreAzindale(resultSet.getString("EmailTutoreAziendale"));
                oftr.setAzienda(resultSet.getInt("Azienda"));
                oftr.setTutoreUniversitario(resultSet.getInt("TutoreUniversitario"));
                Offerte.add(oftr);
            }
            return Offerte;


            }catch (SQLException e){
            throw new DaoException("Errore query",e);
        }
    }
    public List<OffertaTirocinio> getAllOffertatr()throws DaoException{
        List<OffertaTirocinio> Offerte = new ArrayList<OffertaTirocinio>();
        OffertaTirocinio oftr = new OffertaTirocinio();
        try {
            this.init();
            ResultSet resultSet = selectAllOfferteditr.executeQuery();
            while (resultSet.next()) {
                oftr.setIDOffertaTirocinio(resultSet.getInt("IDOffertaTirocinio"));
                oftr.setTitolo(resultSet.getString("Titolo"));
                oftr.setDescrizioneBreve(resultSet.getString("DescrizioneBreve"));
                oftr.setDescrizione(resultSet.getString("Descrizione"));
                oftr.setOrario(resultSet.getString("Orari"));
                oftr.setDurataOra(resultSet.getInt("DurataOre"));
                oftr.setDurataMesi(resultSet.getInt("DurataMesi"));
                oftr.setPeriodoInizio(resultSet.getDate("PeriodoInizio"));
                oftr.setPeriodoFine(resultSet.getDate("PeriodoFine"));
                oftr.setModalita(resultSet.getString("Modalita"));
                oftr.setObbiettivi(resultSet.getString("Obbiettivi"));
                oftr.setRimborsi(resultSet.getString("Rimborsi"));
                oftr.setFacilitazioni(resultSet.getString("Facilitazioni"));
                oftr.setAziendaOspitante(resultSet.getString("AziendaOspitante"));
                oftr.setCodiceTirocinio(resultSet.getInt("CodIdentTirocinio"));
                oftr.setSettoreInserimento(resultSet.getString("SettoreInserimento"));
                oftr.setTempoAccessoLocaliAziendali(resultSet.getString("TempoAccessoLocaliAziendali"));
                oftr.setNomeTutoreAziendale(resultSet.getString("NomeTutoreAziendale"));
                oftr.setCognomeTutoreAziendale(resultSet.getString("CognomeTutoreAziendale"));
                oftr.setTelefonoTutoreAzindale(resultSet.getString("TelefonoTutoreAziendale"));
                oftr.setEmailTutoreAzindale(resultSet.getString("EmailTutoreAziendale"));
                oftr.setAzienda(resultSet.getInt("Azienda"));
                oftr.setTutoreUniversitario(resultSet.getInt("TutoreUniversitario"));
                Offerte.add(oftr);
            }
            return Offerte;


        }catch (SQLException e){
            throw new DaoException("Errore query",e);
        }
    }



    public void setOffertatr(OffertaTirocinio tr) throws DaoException{
        try{
            insertOffertatr.setString(1,tr.getTitolo());
            insertOffertatr.setString(2,tr.getDescrizioneBreve());
            insertOffertatr.setString(3,tr.getDescrizione());
            insertOffertatr.setString(4,tr.getOrario());
            insertOffertatr.setInt(5,tr.getDurataOra());
            insertOffertatr.setInt(6,tr.getDurataMesi());
            insertOffertatr.setDate(7,tr.getPeriodoInizio());
            insertOffertatr.setDate(8,tr.getPeriodoFine());
            insertOffertatr.setString(9,tr.getModalita());
            insertOffertatr.setString(10,tr.getObbiettivi());
            insertOffertatr.setString(11,tr.getRimborsi());
            insertOffertatr.setString(12,tr.getFacilitazioni());
            insertOffertatr.setString(13,tr.getAziendaOspitante());
            insertOffertatr.setInt(14,tr.getCodiceTirocinio());
            insertOffertatr.setString(15,tr.getSettoreInserimento());
            insertOffertatr.setString(16,tr.getTempoAccessoLocaliAziendali());
            insertOffertatr.setString(17,tr.getNomeTutoreAziendale());
            insertOffertatr.setString(18,tr.getCognomeTutoreAziendale());
            insertOffertatr.setString(19,tr.getTelefonoTutoreAzindale());
            insertOffertatr.setString(20,tr.getEmailTutoreAzindale());
            insertOffertatr.setInt(21,tr.getAzienda());
            insertOffertatr.setInt(22,tr.getTutoreUniversitario());
            insertOffertatr.executeUpdate();

        }catch (SQLException e){
            throw new DaoException("Errore inserimento",e);
        }

    }



    public void destroy() throws DaoException {

        try {

            this.selectOffertetrByAzienda.close();
            this.selectOffertatrByID.close();
            this.selectAllOfferteditr.close();
            this.insertOffertatr.close();


            super.destroy();

        } catch (SQLException ex) {
            ex.printStackTrace();

            throw new DaoException("Error destroy in Offerta tr", ex);


        }

    }
}