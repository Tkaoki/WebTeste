package pages;

import support.DriverQA;

public class GridProcessos {

    private DriverQA driver;

    public GridProcessos(DriverQA driverQA) {
        driver = driverQA;
    }

    public void clickNovoProcesso() {
        driver.click("#btn-novo", "css");
    }

    public boolean existeTexto(String message) {
        return driver.getTextAllPage(message);
    }

    public void clicaBotao(String idBotao) {
        driver.click(idBotao);
    }
}
