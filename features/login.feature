Feature: Login

   Scenario: Realizar login com senha inválida
    Given que estou na tela de login
    When informo uma senha inválida
    Then devo visualizar uma mensagem de erro

  Scenario: Realizar login com senha inválida
    Given que estou na tela de login
    When informo uma senha inválida
    Then devo receber uma mensagem de erro