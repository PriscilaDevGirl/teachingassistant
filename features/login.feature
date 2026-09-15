Feature: Login

  Scenario: Realizar login com dados válidos
    Given que estou na tela de login
    When informo usuário e senha válidos
    Then devo acessar o sistema

  Scenario: Realizar login com senha inválida
    Given que estou na tela de login
    When informo uma senha inválida
    Then devo visualizar uma mensagem de erro

  Scenario: Login com usuário inexistente
    Given que estou na tela de login
    When informo um usuário inexistente
    Then devo receber uma mensagem informando que o usuário não foi encontrado

  Scenario: Login com campos vazios
    Given que estou na tela de login
    When tento entrar sem informar usuário e senha
    Then devo receber uma mensagem solicitando o preenchimento dos campos

  Scenario: Realizar login sem informar senha
    Given que estou na tela de login
    When não informo uma senha
    Then devo visualizar uma mensagem solicitando a senha