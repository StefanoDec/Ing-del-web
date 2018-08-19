package model;

import dao.data.DaoData;

import java.sql.Timestamp;

public class User {


    private Integer IDUser ;
    private String Email ;
    private String Password;
    private Integer TipologiaAccount;
    private Timestamp CreateDate;
    private Timestamp UpdateDate;


//    public User(){
//        this.IDUser = 2;
//        this.Email = null;
//        this.Password = null;
//        this.TipologiaAccount = 0;
//    }


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



    @Override
    public String toString() {
        return "User{" +
                "ID=" + IDUser +
                ", email='" + Email + '\'' +
                ", Password='" + Password + '\'' +
                ", TipologiaAccount='" + TipologiaAccount + '\'' +
                '}';
    }
}






