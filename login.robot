***Settings***
Documentation   Testes da página login

Library         Browser

***Test Cases***
Login com sucesso
    Open Browser    https://parodify.herokuapp.com/users/sign_in        chromium

    Fill Text       id=user_email           petherson_teste@gmail.com
    Fill Text       css=#user_password      pet123
    Click           css=input[type=submit]

    Wait For Elements State     css=a[href$='/sign_out']    visible     10

