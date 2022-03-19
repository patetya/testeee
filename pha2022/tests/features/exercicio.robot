*** Settings ***
Documentation        aqui estarão presentes todos os exercícios da aula de automoção.        
...                  não se sinta perdido, pois aqui a gente descreve o que está fazendo.
*** Variables ***
&{PESSOA}       
...              nome=elieser    
...              sobrenome=júnior    
...              idade=20    
...              endereço=rua seis    
...              carro=corolla
...              data_nascimento=25/06/2002
@{FRUTAS}        
...              manga
...              batata
...              maça
...              banana
...              tomate


*** Keywords ***
Somar dois números
    [Arguments]            ${NUM_A}   ${NUM_B}
    ${SOMA}     Evaluate    ${NUM_A}+${NUM_B}
    [Return]      ${SOMA} 

Fazer o email especial
    [Arguments]        ${NOME}     ${SOBRENOME}    ${IDADE}
    Log To Console     ${NOME}_${SOBRENOME}_${IDADE}@robot.com
    [Return]           ${EMAIL}

Cenário: Validar soma de dois números
    [Tags]        SOMA
    ${RESULTADO}   Somar dois números    576    789
    Log To Console    ${RESULTADO}




Contar de 0 a 11
    FOR    ${counter}    IN RANGE    0    11  
        Log To Console   ${counter}
    END

Cenário: usando IF
Contar de 0 a 11 sendo apenas o 5 e o 8
      FOR    ${CONTARA}    IN RANGE    0    11    
         IF    ${CONTARA} == 5
             Log To Console    eu estou no número: ${CONTARA}
         ELSE IF     ${CONTARA} == 8
         Log To Console    eu estou no número: ${CONTARA}
         END     
      END

*** Test Cases ***
Cenário: contagem 5 e 8
    [Tags]    Contar
    Contar de 0 a 11 sendo apenas o 5 e o 8

Imprimir lista de compras
    [Tags]        FRUTA
    @{FRUTAS}    Create List     banana    maça    morango    jaca    maracuja
    FOR    ${fruta}    IN    @{FRUTAS}
        Log To Console   ${fruta}
        
    END

Imprimindo o nome de 5 países
    @{PAISES}    Create List    alemanha    brasil    venezuela    austria    hungria
    FOR    ${paises}    IN    @{PAISES}
        Log To Console    Eu visitei o país: ${paises}

        
    END





    

    
*** Test Cases ***
Cenário: email
    [Tags]    EMAIL
    ${RESULTADO}     Fazer o email especial    elieser    junior    20
     Log To Console    ${EMAIL}




    



