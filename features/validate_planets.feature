#language: en

Feature: Planets API count limit reached

    As a planets api developer
    I want to be able to send the request from api
    So I am sure this request doesn't exeed my current count limit

    
    Background: Send GET event to planets API
        Given I send the request 
        
    
    Scenario: Save the count value from response
        And I can keep the count value to use later

    
    Scenario: API status return 404
        And I receive the response code
        Then I send a higher random value than my actual count and received response code should be 404


    
        