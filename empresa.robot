*** Settings ***
Resource            ../resources/tests.resource
Resource            ../resources/variables.resource
Test Setup          Abrir o navegador
Test Teardown       Fechar o navegador    

*** Test Cases ***

Teste 1: Cadastro de company
    Acessar a página de login QaCodersAcademy
    Digitar um e-mail
    Digitar uma senha
	Clicar em entrar
    Clicar em cadastro
    Clicar em Empresa
    Clicar em novo cadastro de Empresa
    Digitar Razão Social
    Digitar Nome Fantasia
    Digitar Email da Empresa 
    Digitar CNPJ
    Digitar Telefone
    Digitar Nome Responavel
    Digitar Cep
    Digitar Pais
    Digitar Cidade
    Digitar Estado
    Digitar Bairro
    Digitar Rua
    Digitar Número
    Digitar Complemento
    Clicar em Salvar Nova Empresa