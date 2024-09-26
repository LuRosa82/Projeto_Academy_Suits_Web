*** Variables ***
${URL}                      https://automacao.qacoders-academy.com.br/login
${emailLogin}               sysadmin@qacoders.com
${passwordLogin}            1234@Test
${accessProfile}            ADMIN
                    

${emailInput}               //input[contains(@type,'text')]
${senhaInput}               //input[contains(@type,'password')]
${entrarButton}             //button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium css-ojf4v2'][contains(.,'Entrar')]
${cadastros}                //div[contains(@id,'Cadastros')]
${usuarios}                 //div[contains(@id,'Usuários')]
${novoCadastro}             //button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
${fullNameInput}            //input[contains(@name,'fullName')]
${emailCadastroInput}       //input[contains(@name,'mail')]
${accessoProfileInput}      //input[contains(@name,'accessProfile')]
${cpfInput}                 //input[contains(@name,'cpf')]
${passwordCadastroInput}    //input[contains(@name,'password')]
${confirmePassword}         //input[contains(@name,'confirmPassword')]
${salvar}                   id:save
${diretorias}               //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Diretorias')]
${novoCadastroDiretoria}    //button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
${dadosDiretoria}           //input[contains(@class,'MuiInputBase-input MuiInput-input css-mnn31')]
${salvarUsuário}            save
${editarDiretoria}          (//button[@name='editar'][contains(.,'Editar')])[1]
${editarDadosDiretoria}     //input[contains(@class,'MuiInputBase-input MuiInput-input css-mnn31')]
${salvarAlterações}         //button[@type='submit'][contains(.,'SALVAR ALTERAÇOES')]
${sair}                     //button[@class='css-1nvbq2d'][contains(.,'Logout')]
${editarUsuário}            id:edit
${editarNomeUsuario}        id:fullName
${mailEditarUsuario}        id:mail     
${salvarEditar}             id:save
${telaLogin}                //form[contains(@class,'css-fpwknt')]
${telaCadastro}             //form[contains(@class,'css-ffwpz9')]
${empresa}                  id:Empresa
${novoCadastroEmpresa}      id:Novo Cadastro
${razãoSocial}              id:companyName
${nomeFantasia}             id:fantasyName
${emailCompany}             id:companyMail
${emailCadastroCompanyInput}       //input[contains(class,'css-egofu9')]
${cnpjCompany}              id:matriz
${cnpj}                     12345678987422
${telefoneCompany}          id:telephone
${telefone}                 46446423
${descricaoService}         id:serviceDescription
${descricao}                Custos
${nomeResponsavel}          id:fullName
${CEPCompany}               id:zipCode
${PaisCompany}              id:country
${CidadeCompany}            id:city
${EstadoComapny}            id:state
${BairroCompany}            id:district
${RuaCompany}               id:street
${NumeroComapy}             id:number
${ComplementoCompany}       id:complement
${SalvarCompany}            id:save