*** Settings ***
Library        AppiumLibrary
Resource       Recursos.robot

*** Test Cases ***
Busca De itens e lojas
    Abrir App

    Dado que o usuário esteja na tela de login
    E adicione um email válido
    E receba o otp válido
    Quando o usuário clicar em entrar
    Então o usuário é redirecionado para a página inicial da conta

    Dado que o usuário está na tela inicial
    Quando clica na barra de Busca
    E o usuário digita o nome do produto
    E uma lista de opções de auto completar deve ser exibida
    E o usuário seleciona o produto desejado
    Então a busca será finalizada.

    #Quando o usuário seleciona uma loja
    #E visualiza os produtos da loja
    #E Seleciona um produto
    #E Clicamos em "comprar agora"
    #Então somos direcionados para a tela de cesta    