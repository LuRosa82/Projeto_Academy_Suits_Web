*** Settings ***
Resource        variables.resource
Library         SeleniumLibrary
Library         String


*** Keywords ***
#login de acesso
Abrir o navegador
    Open Browser     browser=chrome
    Maximize Browser Window
Fechar o navegador 
    Close Browser
Acessar a página de login QaCodersAcademy  
    Go To    url=${URL} 

Digitar um e-mail
    Wait Until Element Is Visible      locator=${emailInput}    
    Input Text                         locator=${emailInput}                text=${emailLogin} 

Digitar uma senha
    Wait Until Element Is Visible      locator=${senhaInput} 
    Input Text                         locator=${senhaInput}                text=${passwordLogin}

Clicar em entrar
    Wait Until Element Is Visible      locator=${entrarButton}  
    Click Button                       locator=${entrarButton}  
    Sleep    3s
    Capture Page Screenshot            telalogin.jpg 

#Login de acesso invalido
Email inválido de login
    Wait Until Element Is Visible       locator=${emailInput}    
    Input Text                          locator=${emailInput}                 text=email.com
    Wait Until Element Is Visible       locator=${senhaInput}
    Input Password                      locator=${senhaInput}                 password=${passwordLogin} 
    Capture Element Screenshot          locator=${telaLogin}    

Senha invalida de login
   Wait Until Element Is Visible       locator=${emailInput}    
    Input Text                          locator=${emailInput}                 text=${emailLogin}
    Wait Until Element Is Visible       locator=${senhaInput}
    Input Text                          locator=${senhaInput}                 text=123@Test
    Capture Element Screenshot          locator=${telaLogin}     

Nome e sobrenome em branco
    Wait Until Element Is Visible        locator=${fullNameInput}
    Input Text                           locator=${fullNameInput}              text=

Email em branco
    Wait Until Element Is Visible        locator=${emailCadastroInput}  
    Input Text                           locator=${emailCadastroInput}         text=
    Sleep    3s
    Capture Page Screenshot            telalogin.jpg 

Senha em branco
    Wait Until Element Is Visible        locator=${senhaInput}  
    Input Text                           locator=${senhaInput}         text=
    Sleep    3s
    Capture Page Screenshot            telalogin.jpg 

#Menu cadastro
Clicar em cadastro
    Wait Until Element Is Visible      locator=${cadastros}  
    Click Element                      locator=${cadastros}        
#Menu usuario 
Clicar em usuários
    Wait Until Element Is Visible      locator=${usuarios}   
    Click Element                      locator=${usuarios}        
#Novo cadastro   
Clicar novo cadastro 
    Wait Until Element Is Visible      locator=${novoCadastro}  
    Click Button                       locator=${novoCadastro}      
 
Digitar nome completo
    
    Wait Until Element Is Visible      locator=${fullNameInput}
    Input Text                         locator=${fullNameInput}              text=Luciana Mendes Rosa   

Digitar um e-mail do cadastro do usuário
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${EMAIL_TEST}             ${palavra_randomica}@gmail.com
    Log                     ${EMAIL_TEST}
  
    Wait Until Element Is Visible      locator=${emailCadastroInput} 
    Input Text                         locator=${emailCadastroInput}         text=${EMAIL_TEST}  
    
Digitar perfil de acesso
    Wait Until Element Is Visible      locator=${accessoProfileInput}  
    Input Text                         locator=${accessoProfileInput}        text=${accessProfile}    
  
Digitar CPF  
    ${cpf_randomica}    Generate Random String    length=11    chars=[NUMBERS]
    ${cpf_randomica}    Convert To Lower Case      ${cpf_randomica} 
    Set Test Variable       ${CPF}                 ${cpf_randomica} 
    Log                     ${CPF}
    
    Wait Until Element Is Visible      locator=${cpfInput}    
    Input Text                         locator=${cpfInput}                   text=${CPF}   
   

Digitar uma senha do usuário
    Wait Until Element Is Visible      locator=${passwordCadastroInput}    
    Input Text                         locator=${passwordCadastroInput}      text=${passwordLogin}  
  

Digitar confirme a sua senha
    Wait Until Element Is Visible      locator=${confirmePassword}     
    Input Text                         locator=${confirmePassword}           text=${passwordLogin}  

Clicar em salvar novo
    Wait Until Element Is Visible      locator=${salvar}  
    Click Button                       locator=${salvar} 
    Sleep    5s    
    Capture Page Screenshot            telauser.jpg


#Perfil de acesso em branco
Perfil de acesso
    Wait Until Element Is Visible        locator=${accessoProfileInput}    
    Input Text                           locator=${accessoProfileInput}        text=
CPF em branco
    Wait Until Element Is Visible        locator=${cpfInput}   
    Input Text                           locator=${cpfInput}                   text=

Password em branco
    Wait Until Element Is Visible        locator=${passwordCadastroInput}  
    Input Text                           locator=${passwordCadastroInput}       text=
    
Confirmar senha salvar novo usuário
    Wait Until Element Is Visible        locator=${confirmePassword}  
    Input Text                           locator=${confirmePassword}            text=
    Sleep    3s    
    Capture Page Screenshot            telauserbranco.jpg

      
Clicar no botão
    Wait Until Element Is Visible        locator=${salvar} 
    Click Button                         locator=${salvar}  
    Capture Element Screenshot           locator=${telaCadastro}
    Sleep    3s    
    Capture Page Screenshot             telauserbranco.jpg


#Editar cadastro de usuário  
Clicar em editar usuário
    Wait Until Element Is Visible      locator=${editarUsuário}  
    Click Button                       locator=${editarUsuário}  

Digitar nome completo do editar ususário
    Wait Until Element Is Visible      locator=${editarNomeUsuario}    
    Input Text                         locator=${editarNomeUsuario}         text=Luciana Mendes Rosa  
    Wait Until Element Is Visible      locator=${mailEditarUsuario}    
    Input Text                         locator=${mailEditarUsuario}         text=Lucianarosa@gmail.com 
  
Clicar em salvar alterações do usuário
    Wait Until Element Is Visible      locator=${salvarEditar} 
    Click Button                       locator=${salvarEditar} 
    Sleep    3s    
    Capture Page Screenshot            telauserbranco.jpg
    

#Menu diretoria
Clicar em diretorias
    Wait Until Element Is Visible      locator=${diretorias}   
    Click Element                      locator=${diretorias}        

Clicar em novo cadastro
    Wait Until Element Is Visible      locator=${novoCadastroDiretoria}
    Click Button                       locator=${novoCadastroDiretoria}

Digitar dados da diretoria
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${board}                   ${palavra_randomica}
    Log                     ${board}
    Wait Until Element Is Visible      locator=${dadosDiretoria}     
    Input Text                         locator=${dadosDiretoria}               text=${board} 

Clicar em salvar novo usuário
    Wait Until Element Is Visible      locator=${salvarUsuário}
    Click Button                       locator=${salvarUsuário}         

Clicar em editar
    Wait Until Element Is Visible      locator=${editarDiretoria}  
     Click Button                      locator=${editarDiretoria}        

Editar dados diretoria  
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${board&}                 ${palavra_randomica} 
    Wait Until Element Is Visible      locator=${editarDadosDiretoria}     
    Input Text                         locator=${editarDadosDiretoria}         text=${board&}  

Clicar em salvar alterações
    Wait Until Element Is Visible      locator=${salvarAlterações}  
    Click Button                       locator=${salvarAlterações}         

Clicar em sair
    Wait Until Element Is Visible      locator=${sair}  
    Click Button                       locator=${sair}         
   
#Novo cadastro de company
Clicar em Empresa
    Wait Until Element Is Visible      locator=${empresa}   
    Click Element                      locator=${empresa}
    
    
Clicar em novo cadastro de Empresa
    Wait Until Element Is Visible      locator=${novoCadastroEmpresa}
    Click Button                       locator=${novoCadastroEmpresa}


Digitar Razão Social    
    Wait Until Element Is Visible      locator=${razãoSocial}
    Input Text                         locator=${razãoSocial}              text=Organizações Tabajara   

Digitar Nome Fantasia   
    Wait Until Element Is Visible      locator=${nomeFantasia}
    Input Text                         locator=${nomeFantasia}              text=Organizações Tabajara   

Digitar Email da Empresa   
   Wait Until Element Is Visible      locator=${emailCompany}
    Input Text                         locator=${emailCompany}              text=organizacoestabajara@gmail.com  
  
Digitar CNPJ    
    Wait Until Element Is Visible      locator=${cnpjCompany}
    Input Text                         locator=${cnpjCompany}              text=${cnpj}    

Digitar Telefone   
    Wait Until Element Is Visible      locator=${telefoneCompany}
    Input Text                         locator=${telefoneCompany}              text=${telefone}    

Digitar Descrição de Serviço   
    Wait Until Element Is Visible      locator=${descricaoService}
    Input Text                         locator=${descricaoService}              text=${descricao}    

Digitar Nome Responavel  
    Wait Until Element Is Visible      locator=${nomeResponsavel}
    Input Text                         locator=${nomeResponsavel}              text=Luciana Mendes Rosa    

Digitar Cep
    Wait Until Element Is Visible      locator=${CEPCompany}
    Input Text                         locator=${CEPCompany}              text=08663080    

Digitar Pais 
    Wait Until Element Is Visible      locator=${PaisCompany}
    Input Text                         locator=${PaisCompany}              text=Brasil   

Digitar Estado
    Wait Until Element Is Visible      locator=${EstadoComapny}
    Input Text                         locator=${EstadoComapny}              text=São Paulo    

Digitar Cidade
    Wait Until Element Is Visible      locator=${CidadeCompany}
    Input Text                         locator=${CidadeCompany}              text=Suzano

Digitar Bairro
    Wait Until Element Is Visible      locator=${BairroCompany}
    Input Text                         locator=${BairroCompany}              text=Casa Branca


Digitar Rua  
    Wait Until Element Is Visible      locator=${RuaCompany}
    Input Text                         locator=${RuaCompany}              text=Tereza Haguiara cardoso

Digitar Número  
    Wait Until Element Is Visible      locator=${NumeroComapy}
    Input Text                         locator=${NumeroComapy}              text=876

Digitar Complemento 
    Wait Until Element Is Visible      locator=${ComplementoCompany}
    Input Text                         locator=${ComplementoCompany}              text=Bloco C   
    
Clicar em Salvar Nova Empresa
    Wait Until Element Is Visible      locator=${SalvarCompany}
    Click Button                       locator=${SalvarCompany}             
    
