package pages;

import support.DriverQA;

import java.sql.Driver;

public class ProcessosMostrar {

    private final DriverQA driver;

    public ProcessosMostrar(DriverQA driverQA) {
        driver = driverQA;
    }

    public String recuperarMensagemDeSucesso() {
        return driver.getText("notice");
    }

    public void clicarVoltar() {
        driver.click(".ls-btn-primary-danger","css");
    }

    public String pegaValorCampo(String idCampo) {
        return driver.getText(idCampo);
    }
}
