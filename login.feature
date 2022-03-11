            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "fabioaraujo@ebac.com.br"
            E a senha "abcd1234"
            Entao deve ser direcionado para a tela de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "fabioalaujo@ebac.com.br"
            E a senha "abcd1234"
            Entao deve exibir uma mensagem de alerta "usuário ou senha inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "fabioaraujo@ebac.com.br"
            E a senha "abcdf1234"
            Entao deve exibir uma mensagem de alerta "usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar <usuario> e <senha>
            E <usuario> ou <senha> estiverem incorretos
            Então deve aparecer a <mensagem> de alerta

            Exemplos:
            | usuario                    | senha      | mensagem                     |
            | "fabioalaujo@ebac.com.br"  | "abcd1234" | "usuário ou senha inválidos" |
            | "fabbioaraujo@ebac.com.br" | "abcd1234" | "usuário ou senha inválidos" |
            | "fabioaraujo@ebac.com.br"  | "abc1234"  | "usuário ou senha inválidos" |
            | "fabioalaujo@ebac.co.br"   | "abcd"     | "usuário ou senha inválidos" |
            | "fabio@ebac.com.br"        | "1234"     | "usuário ou senha inválidos" |
            | "fabioalaujo@ebac.com.br"  | "abc1234"  | "usuário ou senha inválidos" |