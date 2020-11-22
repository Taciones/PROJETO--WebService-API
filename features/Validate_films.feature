#language: en

Feature: Films API request and titles are successfull

    As a films api developer
    I want to be able to receive the request from api
    So I am sure all the titles and status are correctly

    
    Background: Send GET event to films API
        Given I send the request 
        

    
    Scenario: API status return 200
        And I receive the response code 
        Then the received response code should be 200
    
    Scenario: I have titles on my response
        And I receive the response code
        And I see the title element on the response
    
    
    Scenario Outline: Save every title element from results
        And I receive the response code
        And I see the title element on the response
        Then I should save these <elements> for later use

        Examples: 
        |   elements                   |
        |   "A New Hope"               |   
        |   "The Empire Strikes Back"  |   
        |   "Return of the Jedi"       |   
        |   "The Phantom Menace"       |
        |   "Attack of the Clones"     |
        |   "Revenge of the Sith"      |


    
        