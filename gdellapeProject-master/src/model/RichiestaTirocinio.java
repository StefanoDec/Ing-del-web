package model;

import java.sql.Timestamp;

public class RichiestaTirocinio {
    private Integer IDricTironinio;
    private Integer DurataOre;
    private Integer CFU;
    private Integer OffertaTirocinio;
    private Integer Tirocinante;
    private Timestamp CreateDate;

    public Integer getOffertaTirocinio() {
        return OffertaTirocinio;
    }

    public void setOffertaTirocinio(Integer offertaTirocinio) {
        OffertaTirocinio = offertaTirocinio;
    }

    public Integer getTirocinante() {
        return Tirocinante;
    }

    public void setTirocinante(Integer tirocinante) {
        Tirocinante = tirocinante;
    }

    private Timestamp UpdateDate;



    public Integer getIDricTironinio() {
        return IDricTironinio;
    }

    public void setIDricTironinio(Integer IDricTironinio) {
        this.IDricTironinio = IDricTironinio;
    }

    public Integer getDurataOre() {
        return DurataOre;
    }

    public void setDurataOre(Integer durataOre) {
        DurataOre = durataOre;
    }

    public Integer getCFU() {
        return CFU;
    }

    public void setCFU(Integer CFU) {
        this.CFU = CFU;
    }


}
