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



@Override
public void init() throws DaoException {
    try {

        super.init();


        this.selectTirocinanteById = connection.prepareStatement("SELECT * FROM tirocinante WHERE IDTirociante = ?");

        this.insertTirocinante = connection.prepareStatement("INSERT INTO tirociante(Nome,Cognome,LuogoDiNascita,LuogoDiResidenza,ProvinciaDiResidenza,CodeciFiscale,Telefono," +
                "CorsoDiLaurea,DiplomaUniversitario,Laureato,DottoratoDiRicerca,ScuolaAltro,Handicap) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

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
        }

    }catch (SQLException e){
        throw new DaoException("Errore inserimento",e);
    }
    return tr;
}

}


