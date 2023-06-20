Scenario: Login
Dado que o usuário esteja na tela de login
E adicione um email válido
E receba o otp válido
Quando o usuário clicar em entrar
Então o usuário é redirecionado para a página inicial da conta

Scenario: V.C (Econimize)
Dado que o usuário está na tela de Econimize
Quando o usuário clicar no botão "Criar lista"
E o usuário clicar no botão "+" para adicionar um produto à lista
E o usuário selecionar um produto específico
E o usuário comparar o produto
Então a comparação dos produtos é finalizada com sucesso

Scenario: Excluir Lista (V.C)
Dado que o usuário está na tela de listas
Quando o usuário clicar no botão "..."
E o usuário clicar em "excluir"
E o usuário confirma a exclusão da lista via modal
Então a exclusão será concluída com sucesso


Scenario: Busca
Dado que o usuário está na tela inicial
Quando clica na barra de Busca
E o usuário digita o nome do produto
E uma lista de opções de auto completar deve ser exibida
E o usuário seleciona o produto desejado
Então a busca será finalizada.

Scenario: Página de loja
Dado que o usuário está na tela de loja
Quando o usuário seleciona uma loja
E visualiza os produtos da loja
E Seleciona um produto
E Clicamos em "comprar agora"
Então somos direcionados para a tela de cesta