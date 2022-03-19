*** Settings ***
Documentation        Aqui estarão presentes as configurações de Setup e Tear Down
...                  Podendo ser utilizadas tanto em para Suites Setup/Tear Down
...                  Quanto para test Setup/Tear Down

Resource            packege.robot

* Keywords *
Abrir navegador
    Set Browser Implicit Wait    20    
    Open Browser    about:blank        chrome
    Go To    http://automationpractice.com/index.php
    Maximize Browser Window

Fechar navegador    
    Capture Page Screenshot
    Close Browser
