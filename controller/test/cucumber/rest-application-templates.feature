@broker_api
@broker_api1
@not-origin
Feature: application templates
  As an API client
  In order to do things with application templates
  I want to List and Show application templates without authenticating

  Scenario Outline: List application templates
    Given I accept "<format>"
    When I send an unauthenticated GET request to "/application_templates"
    Then the response should be "200"
    
    Scenarios:
    |format|
    |JSON|
    |XML|
