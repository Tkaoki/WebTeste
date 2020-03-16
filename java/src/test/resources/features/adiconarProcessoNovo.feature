#language: pt
@TesteWeb
Funcionalidade: Adicionar um novo processo.
  Cenario de Fundo:
    Dado que o usuário está na página Agapito Software Testing

      Esquema do Cenario: Incluir um novo processo com sucesso.
        E o usuario clica em menu "processos"
        E o usuario clica em botão novo processo
        E o usuario digita no campo "processo_vara" o valor "<processo_vara>"
        E o usuario digita no campo "processo_numero_processo" o valor "<processo_numero_processo>"
        E o usuario digita no campo "processo_natureza" o valor "<processo_natureza>"
        E o usuario digita no campo "processo_partes" o valor "<processo_partes>"
        E o usuario digita no campo "processo_data_entrada" o valor "<processo_data_entrada>"
        E o usuario digita no campo "processo_status" o valor "<processo_status>"
        E o usuario escolhe no campo urgencia o valor "Sim"
        E o usuario clica no campo arbitramento com o valor Sim
      Quando o usuário clicar no botão "btn-save" na página de inclusão de processos
      Então o usuário deveria visualizar a mensagem "Processo foi criado com sucesso."

      Exemplos:
        |processo_vara    | processo_numero_processo | processo_natureza| processo_partes    | processo_data_entrada | processo_status |
        |7                | 654321                   | Guarda           | Vanderlei x Thiago | 14/03/2020            | Agendado        |
        |13               | 123456                   | Guarda           | Thiago x Vieira    | 01/03/2020            | Agendado        |

      Cenario: Visualizar um processo cadastrado.
        E o usuario clica em menu "processos"
        E o usuario clica em botão novo processo
        E o usuario digita no campo "processo_vara" o valor "7"
        E o usuario digita no campo "processo_numero_processo" o valor "654321"
        E o usuario digita no campo "processo_natureza" o valor "Trabalhista"
        E o usuario digita no campo "processo_partes" o valor "Vanderlei x Thiago"
        E o usuario digita no campo "processo_data_entrada" o valor "14/03/2020"
        E o usuario digita no campo "processo_status" o valor "Agendado"
        E o usuario escolhe no campo urgencia o valor "Sim"
        E o usuario clica no campo arbitramento com o valor Sim
        E o usuário clicar no botão "btn-save" na página de inclusão de processos
        E o usuário deveria visualizar a mensagem "Processo foi criado com sucesso."
        E o usuário está na página Agapito Software Testing
        E o usuario clica em menu "processos"
        Quando o usuario clica em botão "btn-show" do processo
        Então o usuario visualiza no campo "vara" o valor "7"
        E o usuario visualiza no campo "numero" o valor "654321"
        E o usuario visualiza no campo "natureza" o valor "Trabalhista"
        E o usuario visualiza no campo "partes" o valor "Vanderlei x Thiago"
        E o usuario visualiza no campo "status" o valor "Agendado"

      Cenario: Atualizar um processo cadastrado.
        E o usuario clica em menu "processos"
        E o usuario clica em botão novo processo
        E o usuario digita no campo "processo_vara" o valor "7"
        E o usuario digita no campo "processo_numero_processo" o valor "654321"
        E o usuario digita no campo "processo_natureza" o valor "Trabalhista"
        E o usuario digita no campo "processo_partes" o valor "Vanderlei x Thiago"
        E o usuario digita no campo "processo_data_entrada" o valor "14/03/2020"
        E o usuario digita no campo "processo_status" o valor "Agendado"
        E o usuario escolhe no campo urgencia o valor "Sim"
        E o usuario clica no campo arbitramento com o valor Sim
        E o usuário clicar no botão "btn-save" na página de inclusão de processos
        E o usuário deveria visualizar a mensagem "Processo foi criado com sucesso."
        E o usuário está na página Agapito Software Testing
        E o usuario clica em menu "processos"
        E o usuario clica em botão "btn-edit" do processo
        E o usuario digita no campo "processo_natureza" o valor "Guarda"
        E o usuario digita no campo "processo_assistente_social" o valor "Jose"
        E o usuario digita no campo "processo_status" o valor "Teste123"
      Quando o usuário clicar no botão "btn-save" na página de inclusão de processos
      Então o usuario visualiza no campo "vara" o valor "7"
        E o usuario visualiza no campo "numero" o valor "654321"
        E o usuario visualiza no campo "natureza" o valor "Guarda"
        E o usuario visualiza no campo "partes" o valor "Vanderlei x Thiago"
        E o usuario visualiza no campo "status" o valor "Teste123"
        E o usuario visualiza no campo "as_social" o valor "Jose"

      Cenario: Visualizar um processo cadastrado.
        E o usuario clica em menu "processos"
        E o usuario clica em botão novo processo
        E o usuario digita no campo "processo_vara" o valor "7"
        E o usuario digita no campo "processo_numero_processo" o valor "654321"
        E o usuario digita no campo "processo_natureza" o valor "Trabalhista"
        E o usuario digita no campo "processo_partes" o valor "Vanderlei x Thiago"
        E o usuario digita no campo "processo_data_entrada" o valor "14/03/2020"
        E o usuario digita no campo "processo_status" o valor "Agendado"
        E o usuario escolhe no campo urgencia o valor "Sim"
        E o usuario clica no campo arbitramento com o valor Sim
        E o usuário clicar no botão "btn-save" na página de inclusão de processos
        E o usuário deveria visualizar a mensagem "Processo foi criado com sucesso."
        E o usuário está na página Agapito Software Testing
        E o usuario clica em menu "processos"
      Quando o usuario clica em botão "btn-delete" do processo
        E o usuario seleciona ok na tela de confirmacao
      Então o usuario nao deve ver na lista de processo o processo deletado