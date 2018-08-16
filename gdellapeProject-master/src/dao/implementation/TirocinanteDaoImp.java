package dao.implementation;


import dao.data.DaoDataMySQLImpl;
import dao.exception.DaoException;
import model.Tirocinante;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TirocinanteDaoImp extends DaoDataMySQLImpl {

 private PreparedStatement selectTirocinanteById;
 private PreparedStatement selectAllTirocinante;
 private PreparedStatement insertTirocinante;
 private PreparedStatement selectTirocinanteByIDuser;




@Override
public void init() throws DaoException {
    try {

        super.init();


        this.selectTirocinanteById = connection.prepareStatement("SELECT * FROM tirocinante WHERE IDTirociante = ?");
        this.selectTirocinanteByIDuser = connection.prepareStatement("SELECT * FROM tirocinante WHERE IDUser = ?");

        this.insertTirocinante = connection.prepareStatement("INSERT INTO tirociante(Nome,Cognome,LuogoDiNascita,LuogoDiResidenza,ProvinciaDiResidenza,ProvinciaDiNascita,CodeciFiscale,Telefono," +
                "CorsoDiLaurea,DiplomaUniversitario,Laureato,DottoratoDiRicerca,ScuolaAltro,Handicap) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

        this.selectAllTirocinante = connection.prepareStatement("SELECT * FROM tirociante");

    } catch (SQLException ex) {
        throw new DaoException("Error:PrepareStatement error", ex);

    }

}

public List<Tirocinante> getAllTirociante() throws DaoException{
    List<Tirocinante> tr = new ArrayList<Tirocinante>();

    try{
        this.init();
        ResultSet resultSet = selectAllTirocinante.executeQuery();
        while (resultSet.next())
        {
            Tirocinante tirocinante = new Tirocinante();
            tirocinante.setIDTirocinante(resultSet.getInt("IDTirocinante"));
            tirocinante.setNome(resultSet.getString("Nome"));
            tirocinante.setCognome(resultSet.getString("Cognome"));
            tirocinante.setLuogoDiNascita(resultSet.getString("LuogoDiNascita"));
            tirocinante.setLuogoDiResidenza(resultSet.getString("LuogoDiResidenza"));
            tirocinante.setProvinciaDiResidenza(resultSet.getString("ProvinciaDiResidenza"));
            tirocinante.setProvinciaDiNascita(resultSet.getString("ProvinciaDiNascita"));
            tirocinante.setCodiceFiscale(resultSet.getString("CodiceFiscale"));
            tirocinante.setTelefono(resultSet.getString("Telefono"));
            tirocinante.setCorsoDiLaurea(resultSet.getString("CorsoDiLaurea"));
            tirocinante.setDiplomaUniversitario(resultSet.getString("DiplomaUniversitario"));
            tirocinante.setLaureatoUniversitario(resultSet.getString("Laureato"));
            tirocinante.setDottoratoDiRicerca(resultSet.getString("DottoratoDiRicerca"));
            tirocinante.setScuolaAltro(resultSet.getString("ScuolaAltro"));
            tirocinante.setHandicap((resultSet.getBoolean("Handicap")));
            tr.add(tirocinante);
        }

    }catch (SQLException e){
        throw new DaoException("Errore inserimento",e);
    }
    return tr;
}

public void setTirocinante(Tirocinante tr) throws DaoException {
    try{
        insertTirocinante.setString(1,tr.getNome());
        insertTirocinante.setString(2,tr.getCognome());
        insertTirocinante.setString(3,tr.getLuogoDiNascita());
        insertTirocinante.setString(4,tr.getLuogoDiResidenza());
        insertTirocinante.setString(5,tr.getProvinciaDiResidenza());
        insertTirocinante.setString(6,tr.getProvinciaDiResidenza());
        insertTirocinante.setString(7,tr.getProvinciaDiNascita());
        insertTirocinante.setString(8,tr.getCodiceFiscale());
        insertTirocinante.setString(9,tr.getTelefono());
        insertTirocinante.setString(10,tr.getCorsoDiLaurea());
        insertTirocinante.setString(11,tr.getDiplomaUniversitario());
        insertTirocinante.setString(12,tr.getLaureatoUniversitario());
        insertTirocinante.setString(13,tr.getDottoratoDiRicerca());
        insertTirocinante.setString(14,tr.getScuolaAltro());
        insertTirocinante.setBoolean(15,tr.getHandicap());


    }catch (SQLException e){
        throw new DaoException("Errore inserimento",e);
    }
}
public Tirocinante getTirocianteByID(int id) throws DaoException{
    try {
        this.init();
        Tirocinante tirocinante = new Tirocinante();
        selectTirocinanteById.setInt(1,id);
        ResultSet resultSet = selectTirocinanteById.executeQuery();

        if(resultSet.next()){
            tirocinante.setIDTirocinante(resultSet.getInt("IDTirocinante"));
            tirocinante.setNome(resultSet.getString("Nome"));
            tirocinante.setCognome(resultSet.getString("Cognome"));
            tirocinante.setLuogoDiNascita(resultSet.getString("LuogoDiNascita"));
            tirocinante.setLuogoDiResidenza(resultSet.getString("LuogoDiResidenza"));
            tirocinante.setProvinciaDiResidenza(resultSet.getString("ProvinciaDiResidenza"));
            tirocinante.setProvinciaDiNascita(resultSet.getString("ProvinciaDiNascita"));
            tirocinante.setCodiceFiscale(resultSet.getString("CodiceFiscale"));
            tirocinante.setTelefono(resultSet.getString("Telefono"));
            tirocinante.setCorsoDiLaurea(resultSet.getString("CorsoDiLaurea"));
            tirocinante.setDiplomaUniversitario(resultSet.getString("DiplomaUniversitario"));
            tirocinante.setLaureatoUniversitario(resultSet.getString("Laureato"));
            tirocinante.setDottoratoDiRicerca(resultSet.getString("DottoratoDiRicerca"));
            tirocinante.setScuolaAltro(resultSet.getString("ScuolaAltro"));
            tirocinante.setHandicap(resultSet.getBoolean("Handicap"));

        }
        return tirocinante;


    }catch (SQLException e){
        throw  new DaoException("Problema inserimento",e);
    }


}
    public Tirocinante getTirocianteByIDuser(int id) throws DaoException{
        try {
            this.init();
            Tirocinante tirocinante = new Tirocinante();
            selectTirocinanteByIDuser.setInt(1,id);
            ResultSet resultSet =selectTirocinanteByIDuser.executeQuery();
            if(resultSet.next()){
                tirocinante.setIDTirocinante(resultSet.getInt("IDTirocinante"));
                tirocinante.setNome(resultSet.getString("Nome"));
                tirocinante.setCognome(resultSet.getString("Cognome"));
                tirocinante.setLuogoDiNascita(resultSet.getString("LuogoDiNascita"));
                tirocinante.setLuogoDiResidenza(resultSet.getString("LuogoDiResidenza"));
                tirocinante.setProvinciaDiResidenza(resultSet.getString("ProvinciaDiResidenza"));
                tirocinante.setProvinciaDiNascita(resultSet.getString("ProvinciaDiNascita"));
                tirocinante.setCodiceFiscale(resultSet.getString("CodiceFiscale"));
                tirocinante.setTelefono(resultSet.getString("Telefono"));
                tirocinante.setCorsoDiLaurea(resultSet.getString("CorsoDiLaurea"));
                tirocinante.setDiplomaUniversitario(resultSet.getString("DiplomaUniversitario"));
                tirocinante.setLaureatoUniversitario(resultSet.getString("Laureato"));
                tirocinante.setDottoratoDiRicerca(resultSet.getString("DottoratoDiRicerca"));
                tirocinante.setScuolaAltro(resultSet.getString("ScuolaAltro"));
                tirocinante.setHandicap(resultSet.getBoolean("Handicap"));


            }
            return tirocinante;


        }catch (SQLException e){
            throw  new DaoException("Problema query",e);
        }


    }

}


