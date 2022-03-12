            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro na EBAC-SHOP
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout do portal EBAC-SHOP

            Cenário: Checkout válido
            Quando eu cadastrar os campos obrigatórios de "nome", "sobrenome", "país", "endereço", "cidade", "cep" e "telefone"
            E o endereço de email com em formato válido
            Entao deve finalizar a compra

            Cenário: Cadastro com campos vazios
            Quando eu não preencher todos os campo obrigatórios
            E o endereço de email estiver em formato válido
            Entao deve exibir mensagem de alerta "preencher todos os campos obrigatórios"

            Cenário: Cadastro com email inválido
            Quando eu cadastrar os dados obrigatórios de "nome", "sobrenome", "país", "endereço", "cidade", "cep" e "telefone"
            E o endereço de email estiver em formato inválido
            Entao deve exibir mensagem de alerta "email inválido"

            Esquema do Cenário: Checkout com email inválido
            Quando eu digitar <email>
            E ele estiver em formato inválido
            Então deve aparecer a "email inválido" de alerta

            Exemplos:
            | email                 |
            | "jose@ebaccom.br"     |
            | "joao@gmail.com"      |
            | "marta@bol"           |
            | "@ebac.com.br"        |
            | "paulo.ebac.br"       |
            | "www.ebac.com"        |
            | "esteban@ebac.com.rb" |
