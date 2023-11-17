*** Settings ***
Resource    ../../resources/basic/basic_resource.robot

*** Test Cases ***
Vou imprimir mensagem no console
    [Tags]    Impressao Mensagem Console
    Imprimir mensagem console

Vou imprimir mensagem customizada no console
    [Tags]    Impressao Mensagem Console Customizada
    Imprimir mensagem console customizada "Mensagem customizada no console"
