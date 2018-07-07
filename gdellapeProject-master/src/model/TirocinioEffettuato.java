package model;

import java.util.Date;

public class TirocinioEffettuato {

    private Integer IDTirocinioEffettuato;
    private String Luogo;
    private Date DataConsegnaModulo;
    private Date PeriodoEffettivoInizio;
    private Date PeriodoEffettivoFine;
    private String RisultatoConseguito;
    private String DescrizioneAttivitaSvolta;


    public Integer getIDTirocinioEffettuato() {
        return IDTirocinioEffettuato;
    }

    public String getLuogo() {
        return Luogo;
    }

    public Date getDataConsegnaModulo() {
        return DataConsegnaModulo;
    }

    public Date getPeriodoEffettivoInizio() {
        return PeriodoEffettivoInizio;
    }

    public Date getPeriodoEffettivoFine() {
        return PeriodoEffettivoFine;
    }

    public String getRisultatoConseguito() {
        return RisultatoConseguito;
    }

    public String getDescrizioneAttivitaSvolta() {
        return DescrizioneAttivitaSvolta;
    }

    public void setIDTirocinioEffettuato(Integer IDTirocinioEffettuato) {
        this.IDTirocinioEffettuato = IDTirocinioEffettuato;
    }

    public void setLuogo(String luogo) {
        Luogo = luogo;
    }

    public void setDataConsegnaModulo(Date dataConsegnaModulo) {
        DataConsegnaModulo = dataConsegnaModulo;
    }

    public void setPeriodoEffettivoInizio(Date periodoEffettivoInizio) {
        PeriodoEffettivoInizio = periodoEffettivoInizio;
    }

    public void setPeriodoEffettivoFine(Date periodoEffettivoFine) {
        PeriodoEffettivoFine = periodoEffettivoFine;
    }

    public void setRisultatoConseguito(String risultatoConseguito) {
        RisultatoConseguito = risultatoConseguito;
    }

    public void setDescrizioneAttivitaSvolta(String descrizioneAttivitaSvolta) {
        DescrizioneAttivitaSvolta = descrizioneAttivitaSvolta;
    }
}
