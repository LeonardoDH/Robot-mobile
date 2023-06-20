*** Settings ***
Library        AppiumLibrary
Resource       Recursos.robot

*** Test Cases ***
V.C
    Abrir App
    
    Dado que o usuário esteja na tela de login
    E adicione um email válido
    E receba o otp válido
    Quando o usuário clicar em entrar
    Então o usuário é redirecionado para a página inicial da conta
    
    Dado que o usuário está na tela de Econimize
    Quando o usuário clicar no botão "Criar lista"
    E o usuário clicar no botão "+" para adicionar um produto à lista
    E o usuário selecionar um produto específico
    E o usuário comparar o produto
    Então a comparação dos produtos é finalizada com sucesso
    
    Dado que o usuário está na tela de listas
    Quando o usuário clicar no botão "..."
    E o usuário clicar em "excluir"
    E o usuário confirmar a exclusão da lista via modal
    Então a exclusão da lista será concluída com sucesso