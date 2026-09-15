Feature: Login

  Scenario: Realizar login com dados válidos
    Given que estou na tela de login
    When informo usuário e senha válidos
    Then devo acessar o sistema

  Scenario: Realizar login com senha inválida
    Given que estou na tela de login
    When informo uma senha inválida
    Then devo visualizar uma mensagem de erro
    Then o acesso ao sistema deve ser bloqueado

  Scenario: Login com usuário inexistente
    Given que estou na tela de login
    When informo um usuário inexistente
    Then devo receber uma mensagem informando que o usuário não foi encontrado

  Scenario: Login com campos vazios
    Given que estou na tela de login
    When tento entrar sem informar usuário e senha
    Then devo receber uma mensagem solicitando o preenchimento dos campos

  Scenario: Realizar login com usuário inválido
    Given que estou na tela de login
    When informo um usuário inválido
    Then devo visualizar uma mensagem de erro

   Scenario: Realizar login sem informar senha
    Given que estou na tela de login
    When informo um usuário válido e não informo uma senha
    Then devo visualizar uma mensagem solicitando o preenchimento da senha
    And não devo conseguir acessar o sistema

  Scenario: Login com senha expirada
    Given que estou na tela de login
    When informo uma senha expirada
    Then devo receber uma mensagem solicitando a troca da senha

  Scenario: Login com senha incorreta após várias tentativas
    Given que estou na tela de login
    When informo uma senha incorreta várias vezes
    Then devo receber uma mensagem de bloqueio temporário

  Scenario: Login com usuário bloqueado
    Given que estou na tela de login
    When informo um usuário bloqueado
    Then devo receber uma mensagem informando que o usuário está bloqueado