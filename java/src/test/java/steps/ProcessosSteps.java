package steps;

import cucumber.api.PendingException;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;
import definitions.Processo;
import org.junit.Assert;
import pages.*;
import support.BaseSteps;

import java.util.concurrent.TimeUnit;

public class ProcessosSteps extends BaseSteps {

    private Home home = new Home(driver);
    private MenuImpacta menu = new MenuImpacta(driver);
    private GridProcessos gridProcessos = new GridProcessos(driver);
    private ProcessosInclusao processosInclusao = new ProcessosInclusao(driver);
    private ProcessosMostrar processosMostrar = new ProcessosMostrar(driver);

    @Dado("^que o usuário está na página Agapito Software Testing$")
    @E ("^o usuário está na página Agapito Software Testing$")
    public void queOUsuarioEstaNaPaginaAgapitoSoftwareTesting() {
        home.abrirPagina();
    }

    @E("^o usuario clica em menu \"([^\"]*)\"$")
    public void oUsuarioClicarNoMenu(String vMenu) throws Throwable {
        menu.clicarMenu(vMenu);
    }

    @E("^o usuario clica em botão novo processo$")
    public void oUsuarioClicarNoBotaoNovoProcesso() {
        gridProcessos.clickNovoProcesso();
    }

    @E("^o usuario digita no campo \"([^\"]*)\" o valor \"([^\"]*)\"$")
    public void oUsuarioDigitarNoCampoOValor(String campo, String valor) throws Throwable {
        processosInclusao.preencherCampo(campo, valor);
    }

    @Quando("^o usuário clicar no botão \"(.*)\" na página de inclusão de processos$")
    public void oUsuarioClicarNoBotaoSalvar(String botao) {
        processosInclusao.clicarSalvar(botao);
    }

    @Então("^o usuário deveria visualizar a mensagem \"([^\"]*)\"$")
    public void oUsuarioDeveriaVisualizarAMensagem(String message) throws Throwable {
        Assert.assertEquals(message, processosMostrar.recuperarMensagemDeSucesso());
        Processo.setProcessoId(processosMostrar.pegaValorCampo("codigo"));
    }

    @E("^o usuario escolhe no campo urgencia o valor \"([^\"]*)\"$")
    public void oUsuárioSelecionaNoCampoOValor(String valor) throws Throwable {
       processosInclusao.selecionarUrgencia(valor);
    }


    @E("^o usuario clica no campo arbitramento com o valor Sim$")
    public void oUsuárioClicaNoCampoArbitramentoComOValorSim() {
        processosInclusao.clicarArbitramentoSim();
    }

    @Quando("^o usuário clicar em voltar$")
    public void oUsuárioClicarEmVoltar() {
        processosMostrar.clicarVoltar();
    }

    @Então("^o usuário deveria ver o texto \"([^\"]*)\"$")
    public void oUsuárioDeveriaVerOTexto(String message) throws Throwable {
        Assert.assertTrue(gridProcessos.existeTexto(message));
    }

    @Quando("^o usuario clica em botão \"([^\"]*)\" do processo$")
    public void oUsuarioClicaEmBotãoDoProcesso(String prefixoBotao) throws Throwable {
        this.gridProcessos.clicaBotao(prefixoBotao+"_"+Processo.getProcessoId());
    }

    @E("^o usuario visualiza no campo \"([^\"]*)\" o valor \"([^\"]*)\"$")
    public void oUsuarioVisualizaNoCampoOValor(String campo, String valor) throws Throwable {
        TimeUnit.SECONDS.sleep(2);
        Assert.assertEquals(valor, this.processosMostrar.pegaValorCampo(campo));
    }

    @E("^o usuario seleciona ok na tela de confirmacao$")
    public void oUsuarioSelecionaOkNaTelaDeConfirmacao() throws Throwable {
        TimeUnit.SECONDS.sleep(2);
        driver.ChooseOkOnNextConfirmation();
        TimeUnit.SECONDS.sleep(2);
        driver.ChooseOkOnNextConfirmation();
    }

    @Então("^o usuario nao deve ver na lista de processo o processo deletado$")
    public void oUsuarioNaoDeveVerNaListaDeProcessoOProcessoDeletado() {
        Assert.assertFalse(gridProcessos.existeTexto("id=\"codigo_"+ Processo.getProcessoId()+"\""));
    }
}
