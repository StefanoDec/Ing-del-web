package model;

public class User {


    private Integer IDUser ;
    private String Email ;
    private String Password;
    private Integer TipologiaAccount;

    public Integer getIDUser() {
        return IDUser;
    }

    public String getEmail() {
        return Email;
    }

    public String getPassword() {
        return Password;
    }

    public Integer getTipologiaAccount() {
        return TipologiaAccount;
    }

    public void setIDUser(Integer IDUser) {
        this.IDUser = IDUser;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public void setTipologiaAccount(Integer tipologiaAccount) {
        TipologiaAccount = tipologiaAccount;
    }
}






