Feature: Login

  Scenario: Realizar login com dados válidos
    Given que estou na tela de login
    When informo usuário e senha válidos
    Then devo acessar o sistema

  Scenario: Realizar login com senha inválida
    Given que estou na tela de login
    When informo uma senha inválida
    Then devo visualizar uma mensagem de erro