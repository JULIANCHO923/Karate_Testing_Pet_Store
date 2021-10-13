Feature: Obtener información de mascota

  Scenario Outline: Deseo obtener mascota con id <id> en endpoint <url>
    Given url <url> + <id>
    And header 'accept' = <header_accept>
    When method <method>
    Then status <status>
    And print response
    And match response <op1> <op2>
    Examples:
     |url                                         | id |   header_accept    | method | status  | op1 | op2                  |
     | 'https://petstore.swagger.io/v2/pet/'      | 10 | 'application/xml' | get    | 200     | ==   | read('Success_ExpectedV2.json') |
     | 'https://petstore3.swagger.io/api/v3/pet/' | 10 | 'application/json'  | get    | 200     | ==   | read('Success_ExpectedV3.json') |
