*** Settings ***
Resource         ../resources/tests.resource
Resource         ../resources/variables.resource
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador    
   

*** Test Cases **
CT - 1: Cadastrar um novo usuário
    Acessar a página de login QaCodersAcademy
    Digitar um e-mail
    Digitar uma senha
	Clicar em entrar
    Clicar em cadastro
    Clicar em usuários
    Clicar novo cadastro
    Digitar nome completo
    Digitar um e-mail do cadastro do usuário
	Digitar perfil de acesso
	Digitar CPF
	Digitar uma senha do usuário
    Digitar confirme a sua senha
	Clicar em salvar novo

ct - 2: Editar cadastro de usuario 
    Acessar a página de login QaCodersAcademy
    Digitar um e-mail
    Digitar uma senha
	Clicar em entrar
    Clicar em cadastro
    Clicar em usuários
    Clicar em editar usuário
    Digitar nome completo do editar ususário
    Clicar em salvar alterações do usuário 

CT - 3: Teste de cadastro em branco
    Acessar a página de login QaCodersAcademy
    Digitar um e-mail
    Digitar uma senha
	Clicar em entrar
    Clicar em cadastro
    Clicar em usuários
    Clicar novo cadastro
    Nome e sobrenome em branco
    Email em branco
    Perfil de acesso
    CPF em branco
    Password em branco
    Digitar confirme a sua senha
	Clicar em salvar novo usuário
    
