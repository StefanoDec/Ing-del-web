package model;

import java.util.Date;

public class Tirocinante {
    private Integer IDTirocinate;
    private String nome;
    private String Cognome;

    public Integer getIDTirocinate() {
        return IDTirocinate;
    }

    public void setIDTirocinate(Integer IDTirocinate) {
        this.IDTirocinate = IDTirocinate;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return Cognome;
    }

    public void setCognome(String cognome) {
        Cognome = cognome;
    }

    public String getLuogoDiNascita() {
        return LuogoDiNascita;
    }

    public void setLuogoDiNascita(String luogoDiNascita) {
        LuogoDiNascita = luogoDiNascita;
    }

    public String getProvinciaDiNascita() {
        return ProvinciaDiNascita;
    }

    public void setProvinciaDiNascita(String provinciaDiNascita) {
        ProvinciaDiNascita = provinciaDiNascita;
    }

    public Date getDataDiNascita() {
        return DataDiNascita;
    }

    public void setDataDiNascita(Date dataDiNascita) {
        DataDiNascita = dataDiNascita;
    }

    public String getProvinciaDiResidenza() {
        return ProvinciaDiResidenza;
    }

    public void setProvinciaDiResidenza(String provinciaDiResidenza) {
        ProvinciaDiResidenza = provinciaDiResidenza;
    }

    public String getCodiceFiscale() {
        return CodiceFiscale;
    }

    public void setCodiceFiscale(String codiceFiscale) {
        CodiceFiscale = codiceFiscale;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String telefono) {
        Telefono = telefono;
    }

    public Boolean getCorsoDiLaurea() {
        return CorsoDiLaurea;
    }

    public void setCorsoDiLaurea(Boolean corsoDiLaurea) {
        CorsoDiLaurea = corsoDiLaurea;
    }

    public Boolean getDiplomaUniversitario() {
        return DiplomaUniversitario;
    }

    public void setDiplomaUniversitario(Boolean diplomaUniversitario) {
        DiplomaUniversitario = diplomaUniversitario;
    }

    public Boolean getLaureatoUniversitario() {
        return LaureatoUniversitario;
    }

    public void setLaureatoUniversitario(Boolean laureatoUniversitario) {
        LaureatoUniversitario = laureatoUniversitario;
    }

    public Boolean getScuolaAltro() {
        return ScuolaAltro;
    }

    public void setScuolaAltro(Boolean scuolaAltro) {
        ScuolaAltro = scuolaAltro;
    }

    public String getHandicap() {
        return Handicap;
    }

    public void setHandicap(String handicap) {
        Handicap = handicap;
    }

    private String LuogoDiNascita;
    private String ProvinciaDiNascita;
    private Date DataDiNascita;
    private String ProvinciaDiResidenza;
    private String CodiceFiscale;
    private String Telefono;
    private Boolean CorsoDiLaurea;
    private Boolean DiplomaUniversitario;
    private Boolean LaureatoUniversitario;
    private Boolean ScuolaAltro;
    private String Handicap;

}
