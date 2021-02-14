***Settings***
Documentation   Testes da página login

Library         Browser

Resource        resources/login_actions.robot

# Gancho para tirar screnshot após a execução de cada teste
Test Teardown   Take Screenshot

***Test Cases***
Login com sucesso
    Open Login Page

    Login With      petherson_teste@gmail.com   pet123

    Wait For Elements State     css=a[href$='/sign_out']    visible     10

Senha incorreta
    Open Login Page

    Login With          petherson_teste@gmail.com   123pet
    Alert Should Be     Opps! Dados de acesso incorretos!
    
Email não existe
    Open Login Page

    Login With          teste_petherson@gmail.com   pet123
    Alert Should Be     Opps! Dados de acesso incorretos!

Email não informado
    Open Login Page

    Login With          ${EMPTY}        pet123    # serve para passar um valor vazio
    Alert Should Be     Opps! Dados de acesso incorretos!

Senha não informada
    Open Login Page

    Login With          petherson_teste@gmail.com   ${EMPTY}    # serve para passar um valor vazio
    Alert Should Be     Opps! Dados de acesso incorretos!
