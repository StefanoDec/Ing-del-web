package model;


public class Azienda {

    private Integer IDAzienda;
    private String RagioneSociale;
    private String IndirizzoSedeLegale;
    private String CFiscalePIva;
    private String NomeLegaleRappresentante;
    private String CognomeLegaleRappresentante;
    private String NomeResponsabileConvenzione;
    private String CognomeResponsabileConvenzione;
    private String TelefonoResponsabileConvenzione;
    private String EmailResponsabileConvenzione;
    private String PathPDFConvenzione;


    public Integer getIDAzienda() {
        return IDAzienda;
    }

    public String getRagioneSociale() { return RagioneSociale;}

    public String getIndirizzoSedeLegale() {return IndirizzoSedeLegale;}

    public String getCFiscalePIva() {return CFiscalePIva;}

    public String getNomeLegaleRappresentante() {return NomeLegaleRappresentante;}

    public String getCognomeLegaleRappresentante() {return CognomeLegaleRappresentante;}

    public String getNomeResponsabileConvenzione() {return NomeResponsabileConvenzione;}

    public String getCognomeResponsabileConvenzione() {return CognomeResponsabileConvenzione;}

    public String getTelefonoResponsabileConvenzione() {return TelefonoResponsabileConvenzione;}

    public String getEmailResponsabileConvenzione() {return EmailResponsabileConvenzione;}

    public String getPathPDFConvenzione() {return PathPDFConvenzione;}

    public void setIDAzienda(Integer IDAzienda) {
        this.IDAzienda = IDAzienda;
    }

    public void setRagioneSociale(String ragioneSociale) {
        RagioneSociale = ragioneSociale;
    }

    public void setIndirizzoSedeLegale(String indirizzoSedeLegale) {
        IndirizzoSedeLegale = indirizzoSedeLegale;
    }

    public void setCFiscalePIva(String CFiscalePIva) {
        this.CFiscalePIva = CFiscalePIva;
    }

    public void setNomeLegaleRappresentante(String nomeLegaleRappresentante) {
        NomeLegaleRappresentante = nomeLegaleRappresentante;
    }

    public void setCognomeLegaleRappresentante(String cognomeLegaleRappresentante) {
        CognomeLegaleRappresentante = cognomeLegaleRappresentante;
    }

    public void setNomeResponsabileConvenzione(String nomeResponsabileConvenzione) {
        NomeResponsabileConvenzione = nomeResponsabileConvenzione;
    }

    public void setCognomeResponsabileConvenzione(String cognomeResponsabileConvenzione) {
        CognomeResponsabileConvenzione = cognomeResponsabileConvenzione;
    }

    public void setTelefonoResponsabileConvenzione(String telefonoResponsabileConvenzione) {
        TelefonoResponsabileConvenzione = telefonoResponsabileConvenzione;
    }

    public void setEmailResponsabileConvenzione(String emailResponsabileConvenzione) {
        EmailResponsabileConvenzione = emailResponsabileConvenzione;
    }

    public void setPathPDFConvenzione(String pathPDFConvenzione) {
        PathPDFConvenzione = pathPDFConvenzione;
    }
}
