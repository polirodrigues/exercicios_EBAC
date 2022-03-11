#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero escolher um item de acordo com meu tamanho, gosto e quantidade desejada
Para depois inserir no carrinho

Contexto: 
Dado que eu acesse a página do produto no portal EBAC-SHOP

Cenário: Adicionando produto ao carrinho com sucesso
Quando eu selecionar "cor" e "tamanho"
E adicionar a "quantidade" máxima de "10" produtos por venda
Entao deve inserir os produtos selecionados no carrinho

Cenário: Falha na seleção de produtos
Quando eu selecionar apenas "cor"
E adicionar a "quantidade" máxima de "10" produtos por venda
Entao deve exibir mensagem de alerta "Selecionar Tamanho"

Cenário: Falha na seleção de quantidade de produtos
Quando eu selecionar "cor" e "tamanho"
E adicionar a "quantidade" de "15" produtos
Entao deve exibir mensagem de alerta "Permitido apenas 10 produtos iguais por carrinho"
