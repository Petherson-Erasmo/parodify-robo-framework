***Settings***
Documentation       Testando o player de paródias

Resource        ../resources/base.robot
# Gancho para tirar screnshot após a execução de cada teste
Test Teardown   Take Screenshot

***Test Cases***
Reproduzir paródia Bug de Manhã 
    Open Login Page
    Login With      petherson_teste@gmail.com   pet123
    Logout Link Should Be Visible

    Click       css=a[href*=search]
    Wait For Elements State     xpath=//h2[contains(text(), "Buscar")]    visible     10

    Click       xpath=//img[contains(@src, "sertanejo.png")]/..  #xpath que vai buscar a imagem, porém, uso o /.. para clicar no elemento pai
    Wait For Elements State     xpath=//h2[contains(text(), "Sertanejo")]     visible     10

    Click       xpath=//p[contains(text(), "Marcus e Debug")]/..
    Wait For Elements State     xpath=//h2[contains(text(), "Músicas")]     visible     10

    # No seguinte xpath eu busco pelo nome da música que quero tocar, em seguida navego para os elementos pais e entro no elemento que tem o link para tocar
    Click       xpath=//h2[contains(text(), "Bug de Manhã")]/../..//div[contains(@class, "play")]/a
    Get Style   xpath=//h2[contains(text(), "Bug de Manhã")]/../../..       color       equal       rgb(225, 0, 180)