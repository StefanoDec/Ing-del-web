package dao.implementation;

import dao.data.DaoDataMySQLImpl;
import dao.exception.DaoException;
import model.RichiestaTirocinio;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RichiestaTirocinioDaoImp extends DaoDataMySQLImpl {
    private PreparedStatement selectRichiestatrByID;
    private PreparedStatement selectAllRichiestatr;
    private PreparedStatement insertRichiestatr;


    @Override
    public void init() throws DaoException {
        try {

            super.init();

            this.selectRichiestatrByID = connection.prepareStatement("SELECT * FROM  richiestatirocinio WHERE IDRichiestaTirocinio = ?");

            this.selectAllRichiestatr = connection.prepareStatement("SELECT * FROM richiestatirocinio ORDER BY UpdateDate ASC ");



            this.insertRichiestatr = connection.prepareStatement("INSERT INTO richiestatirocinio (DurataOre,CFU,OffertaTirocionio,Tirocinante) VALUES (?,?,?,?)");

        } catch (SQLException ex) {
            throw new DaoException("Error:PrepareStatement error", ex);

        }
    }

    public RichiestaTirocinio getRichiestatrByID (int ID) throws DaoException{
        try {
            RichiestaTirocinio tr = new RichiestaTirocinio();
            selectRichiestatrByID.setInt(1,ID);
            ResultSet resultSet = selectRichiestatrByID.executeQuery();
            if(resultSet.next()){
                tr.setIDricTironinio(resultSet.getInt("IDRichiestaTirocinio"));
                tr.setDurataOre(resultSet.getInt("DurataOre"));
                tr.setCFU(resultSet.getInt("CFU"));
                tr.setOffertaTirocinio(resultSet.getInt("OffertaTirocionio"));
                tr.setTirocinante(resultSet.getInt("Tirocinante"));
            }
            return tr;

        }catch (SQLException e){
            throw new DaoException("Errore query dato",e);
        }
    }
    public void setRichiestatr(RichiestaTirocinio tr) throws DaoException {
        try {
            insertRichiestatr.setInt(1, tr.getDurataOre());
            insertRichiestatr.setInt(2, tr.getCFU());
            insertRichiestatr.setInt(3, tr.getOffertaTirocinio());
            insertRichiestatr.setInt(4, tr.getTirocinante());
            insertRichiestatr.executeUpdate();


        } catch (SQLException e) {
            throw new DaoException("Errore inserimento dato", e);

        }
    }
    public void destroy() throws DaoException {

        try {

            this.selectAllRichiestatr.close();
            this.selectRichiestatrByID.close();
            this.insertRichiestatr.close();


            super.destroy();

        } catch (SQLException ex) {
            ex.printStackTrace();

            throw new DaoException("Error destroy ", ex);


        }

    }


}
