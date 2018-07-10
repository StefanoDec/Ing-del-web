package model;

public class RichiestaTirocinio {
    private Integer IDricTironinio;
    private Integer DurataOre;

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

    private Integer CFU;
}
