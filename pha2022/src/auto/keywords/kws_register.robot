*** Settings ***    
Documentation        Aqui estarão presentes todas as keywords dos testes de cadastro
...                  do site automationpratice.com

Resource            ../../config/packege.robot

*** Keywords ***
Acessar a página home do site
    Acessar a página home do site Automation Practice
Clicar em "${BUTTON}"
    Wait Until Element Is Enabled    xpath=//*[contains(text(), '${BUTTON}')]
    Click Element                    xpath=//*[contains(text(), '${BUTTON}')]
 Informar um e-mail válido
    Wait Until Element Is Enabled    email_create
    Input Text    email_create    elieser2jr@hotmail.com

Preencher os dados obrigatórios
    Wait Until Element Is Visible    ${REGISTER.form_register}
    Click Element                    ${REGISTER.check_mr}
    Debug
    Input Text                       ${REGISTER.first_name}        Elieser
    Input Text                       ${REGISTER.last_name}         Junior
    Input Text                       ${REGISTER.password}          123456789

    Input Text                       ${REGISTER.select_day}          25
    Input Text                       ${REGISTER.select_months}       06
    Input Text                       ${REGISTER.select_years}        2002


    Input Text                       ${REGISTER.company}           Robot
    Input Text                       ${REGISTER.address1}          Robot Street
    Input Text                       ${REGISTER.city}              text
    Input Text                       ${REGISTER.state}             text
    Input Text                       ${REGISTER.postcode}          text
    Input Text                       ${REGISTER.other}             text
    Input Text                       ${REGISTER.mobile}            text
    Input Text                       ${REGISTER.alias}             text

    Sleep    5
    
    Click Element                    ${REGISTER.btn_register}       
    

Submeter cadastro
Conferir se o cadastro foi efetuado com sucesso