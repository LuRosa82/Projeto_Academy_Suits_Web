*** Settings ***
Resource            ../resources/tests.resource
Resource            ../resources/variables.resource
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador    

*** Test Cases **
Cenário de teste 1: Login
	Acessar a página de login QaCodersAcademy
    Digitar um e-mail
    Digitar uma senha
	Clicar em entrar
   
Cenário de teste 2: Login inválido-Email invalido
    Acessar a página de login QaCodersAcademy
    Email inválido de login
    Clicar em entrar

Cenario de teste 3: Login invalido-Senha invalida
    Acessar a página de login QaCodersAcademy
    Digitar um e-mail
    Senha invalida de login
    Clicar em entrar

Cenario de teste 4: Login invalido-Email em branco
    Acessar a página de login QaCodersAcademy
    Email em branco
    Digitar uma senha
    Clicar em entrar  
                                    
Cenario de teste 5: Login invalido-Senha em branco
    Acessar a página de login QaCodersAcademy
    Digitar um e-mail
    Senha em branco
    Clicar em entrar