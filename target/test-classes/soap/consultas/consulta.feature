Feature: Consultar Informacion Direccion

  Background:
    * url 'https://epmwst04-03.corp.epm.com.co/WCFWSHidroServicioNegocio/Servicios/Solicitudes/Llamada.svc'
    * configure ssl = { trustAll: true }
    * header Authorization = call read('ntlm-auth.js') { url: 'https://epmwst04-03.corp.epm.com.co/WCFWSHidroServicioNegocio/Servicios/Solicitudes/Llamada.svc', username: 'epm\\jhenaoqu', password: 'JhhqrvogvL9235(0' }
    #* header Authorization = call read('basic-auth.js') { username: 'epm\\jhenaoqu', password: 'JhhqrvogvL9235(0' }

  Scenario Outline: soap 1.2
    Given request <body>
    And header <name> = <exp>
    When method <method>
    Then status <status>
    And match <exp1><op1><op2>
    And print <exp2>
    Examples:
      | body                | name         | exp                                                                                                                                     | method | status | exp1                         | op1 | op2                  | exp2                   |
      | read('request.xml') | Content-Type | 'application/soap+xml; charset=utf-8; action="http://epm.com.co/aguas/hidro/contratoservicios/ILlamada/ConsultarInformacionDireccion"'  | post   | 200    | /Envelope/Body/AddResponse = | =   | read('expected.xml') | 'response: ', response |
