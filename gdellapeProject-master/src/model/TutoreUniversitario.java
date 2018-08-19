package model;

import java.sql.Timestamp;

public class TutoreUniversitario {
    private Integer IDTutoreUni;
    private String Nome;
    private String Cognome;
    private String Telefono;
    private String Email;
    private Integer OffTirocinio;
    private Timestamp CreateDate;
    private Timestamp UpdateDate;


    public Integer getIDTutoreUni() {
        return IDTutoreUni;
    }

    public void setIDTutoreUni(Integer IDTutoreUni) {
        this.IDTutoreUni = IDTutoreUni;
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String nome) {
        Nome = nome;
    }

    public String getCognome() {
        return Cognome;
    }

    public void setCognome(String cognome) {
        Cognome = cognome;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String telefono) {
        Telefono = telefono;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }
}