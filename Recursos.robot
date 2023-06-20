*** Settings ***
Library     AppiumLibrary
Library     BuiltIn    
Library    SeleniumLibrary
Resource    Id's-Xpath.robot
Resource    bdd/Login.feature    

*** Variables ***
*** Variables ***
${endereço}        itaim bibi rua olimpiada sp 12  
${email}           test-user-e2e@farmaciasapp.com.br
${OTP}             202322
${Item1}           dipirona
${Item2}           gel
${Item3}           benegrip
${farma}


*** Keywords ***
Abrir App
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName:UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=redmi note 8
    ...                 app=${EXECDIR}/APP/app.apk
   
Dado que o usuário esteja na tela de login
    AppiumLibrary.Wait Until Element Is Visible        id=com.pharmacysa.farmaciasapp.debug:id/btNext        15
    AppiumLibrary.Click Element                id=com.pharmacysa.farmaciasapp.debug:id/btNext
    AppiumLibrary.Click Element                id=com.pharmacysa.farmaciasapp.debug:id/btNext
    AppiumLibrary.Click Element                id=com.pharmacysa.farmaciasapp.debug:id/btInit
    AppiumLibrary.Wait Until Element Is Visible        id=com.pharmacysa.farmaciasapp.debug:id/customEditText  
E adicione um email válido      
    AppiumLibrary.Input Text                   id=com.pharmacysa.farmaciasapp.debug:id/customEditText    ${email}
    AppiumLibrary.Wait Until Element Is Visible        id=com.pharmacysa.farmaciasapp.debug:id/customEditText        15
    AppiumLibrary.Click Element                id=com.pharmacysa.farmaciasapp.debug:id/buttonRequestOTP
    AppiumLibrary.Wait Until Element Is Visible        id=com.pharmacysa.farmaciasapp.debug:id/labelOTPSentOverview       10
E receba o otp válido    
    AppiumLibrary.Input Text                   id=com.pharmacysa.farmaciasapp.debug:id/customEditText    ${OTP}
Quando o usuário clicar em entrar
    AppiumLibrary.Click Element                id=com.pharmacysa.farmaciasapp.debug:id/buttonConfirmOTP
    AppiumLibrary.Wait Until Element Is Visible        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[4]/android.view.ViewGroup/android.widget.ImageView        20
    AppiumLibrary.Click Element                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[4]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[2]
Então o usuário é redirecionado para a página inicial da conta
    AppiumLibrary.Wait Until Element Is Visible        id=com.android.permissioncontroller:id/permission_allow_foreground_only_button        10
    AppiumLibrary.Click Element                        id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
    
Dado que o usuário está na tela de Econimize
    AppiumLibrary.Wait Until Page Contains Element    ${Economize}    15
    AppiumLibrary.Click Element    ${Economize}
Quando o usuário clicar no botão "Criar lista"
    AppiumLibrary.Click Element    ${Criar lista}     
E o usuário clicar no botão "+" para adicionar um produto à lista    
    AppiumLibrary.Wait Until Page Contains Element    ${Add item}    15
    AppiumLibrary.Click Element    ${Add item}
E o usuário selecionar um produto específico
    AppiumLibrary.Wait Until Page Contains Element    ${busca}
    AppiumLibrary.Click Element    ${Busca}
    AppiumLibrary.Input Text    ${Busca}    ${Item1}
    AppiumLibrary.Capture Page Screenshot
    AppiumLibrary.Wait Until Page Contains Element    ${Selecionar busca}    15
    AppiumLibrary.Click Element    ${Selecionar busca} 
    AppiumLibrary.Wait Until Page Contains Element    ${Selecionar item}    15
    AppiumLibrary.Click Element    ${Selecionar item}
    AppiumLibrary.Capture Page Screenshot
    AppiumLibrary.Click Element    ${Confirmar item}
    AppiumLibrary.Wait Until Page Contains Element    ${Add item}    15
    AppiumLibrary.Click Element    ${Add item}
    AppiumLibrary.Wait Until Page Contains Element    ${busca}
    AppiumLibrary.Click Element    ${Busca}
    AppiumLibrary.Input Text    ${Busca}    ${Item2}
    AppiumLibrary.Wait Until Page Contains Element    ${Selecionar busca}    15
    AppiumLibrary.Click Element    ${Selecionar busca}
    AppiumLibrary.Wait Until Page Contains Element    ${Selecionar item}    15
    AppiumLibrary.Click Element    ${Selecionar item}
    AppiumLibrary.Capture Page Screenshot
    AppiumLibrary.Click Element    ${Confirmar item}
    AppiumLibrary.Wait Until Page Contains Element    ${box item1}    15
    AppiumLibrary.Click Element    ${box item1}
    AppiumLibrary.Wait Until Page Contains Element    ${box item2}    15
    AppiumLibrary.Click Element    ${box item2}
E o usuário comparar o produto
    AppiumLibrary.Wait Until Page Contains Element    ${comparar}    15
    AppiumLibrary.Capture Page Screenshot
    AppiumLibrary.Click Element    ${comparar}
    Sleep    2s
Então a comparação dos produtos é finalizada com sucesso
    AppiumLibrary.Wait Until Page Contains Element    ${Aba Itens}    15
    AppiumLibrary.Click Element    ${Aba Itens}
    AppiumLibrary.Wait Until Page Contains Element    ${Aba lojas}    15
    AppiumLibrary.Click Element    ${Aba lojas}
    AppiumLibrary.Wait Until Page Contains Element    ${add prdt1}    15
    AppiumLibrary.Click Element    ${add prdt1}
    AppiumLibrary.Wait Until Page Contains Element    ${add prdt2}    15
    AppiumLibrary.Click Element    ${add prdt2}
    AppiumLibrary.Wait Until Page Contains Element    ${add cesta}    15
    AppiumLibrary.Click Element    ${add cesta}
    AppiumLibrary.Capture Page Screenshot
    Sleep    3s
Dado que o usuário está na tela de listas
    AppiumLibrary.Wait Until Page Contains Element    ${Ir p/ pagamento}    15
    AppiumLibrary.Click Element    ${Economize}
Quando o usuário clicar no botão "..."
    AppiumLibrary.Wait Until Page Contains Element    id=com.pharmacysa.farmaciasapp.debug:id/buttonMinimizeCard    15
E o usuário clicar em "excluir"
    AppiumLibrary.Click Element    id=com.pharmacysa.farmaciasapp.debug:id/buttonMinimizeCard
E o usuário confirmar a exclusão da lista via modal
    AppiumLibrary.Click Element    id=com.pharmacysa.farmaciasapp.debug:id/buttonDeleteListComparativeView
Então a exclusão da lista será concluída com sucesso 
    AppiumLibrary.Click Element    id=com.pharmacysa.farmaciasapp.debug:id/buttonConfirm

#Busca
Dado que o usuário está na tela inicial
    AppiumLibrary.Wait Until Page Contains Element    ${Barra de busca}    15
Quando clica na barra de Busca
    AppiumLibrary.Tap    ${Barra de busca}
    AppiumLibrary.Wait Until Page Contains Element    ${Busca}    15
E o usuário digita o nome do produto
    AppiumLibrary.Input Text    ${Busca}    ${Item1}
    AppiumLibrary.Wait Until Page Contains Element    ${Item busca home}    15
E uma lista de opções de auto completar deve ser exibida
    AppiumLibrary.Click Element    ${Item busca home}
E o usuário seleciona o produto desejado
    AppiumLibrary.Click Element    ${Add prdt carrinho}
Então a busca será finalizada.
    AppiumLibrary.Click Element    ${cesta}
Dados que o usuário esta na tela de loja
    AppiumLibrary.Wait Until Page Contains Element    ${loja}    15
    AppiumLibrary.Click Text    ${loja}
Quando o usuário seleciona uma loja
    AppiumLibrary.Wait Until Page Contains Element    ${Loja pg loja}    15
    AppiumLibrary.Click Element    ${Loja pg loja}
E visualiza os produtos da loja
    AppiumLibrary.Wait Until Page Contains Element    ${card produto}    15
E Seleciona um produto
    AppiumLibrary.Click Element    ${card produto}
E Clicamos em "comprar agora"
    AppiumLibrary.Wait Until Page Contains Element    ${add prdt a cesta (card)}    15
Então somos direcionados para a tela de cesta
    AppiumLibrary.Click Element    ${add prdt a cesta (card)}