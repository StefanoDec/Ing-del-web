package model;

public class Admin {
    private Integer IDadmin;
    private String Nome;
    private String Cognome;

    public Integer getIDadmin() {
        return IDadmin;
    }

    public void setIDadmin(Integer IDadmin) {
        this.IDadmin = IDadmin;
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
}