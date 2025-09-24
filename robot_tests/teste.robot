** Settings **

Library  SeleniumLibrary

** Variables **
${SITE_URL}    https://automationpratice.com.br/
${USUARIO_EMAIL}    qa@teste.com    
${USUARIO_SENHA}    123456

** Keywords **
Abrir Site
    Open Browser    ${SITE_URL}  chrome

Aguardar site carregar
    Sleep    5s

Clicar sobre o botao login
    Click Element    xpath://a[@href='/login']

Digitar email
    Input Text    id:user    ${USUARIO_EMAIL}
Digitar senha
    Input Text    id:password    ${USUARIO_SENHA}

Clicar em logar
    Click Element    id:btnLogin

Verificar texto login realizado
    ${texto_atual}    Get Text    id:swal2-title
    Should Be Equal As Strings    ${texto_atual}    Login realizado

** Test Cases **
Cenário 1: Acessando o site do Robot
    Abrir Site
    Aguardar site carregar
    Clicar sobre o botao login
    Aguardar site carregar
    Digitar email
    Digitar senha
    Clicar em logar
    Aguardar site carregar
    Verificar texto login realizado

Cenário 2: Testando Robot
    [Tags]    Regressivo
    Abrir Site
    Aguardar site carregar
    Clicar sobre o botao login
    Aguardar site carregar
    Digitar email
    Digitar senha
    Clicar em logar
    Aguardar site carregar
    Verificar texto login realizado
