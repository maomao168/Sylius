@shopping_cart
Feature: Seeing detailed information of cart
    In order to see detailed information of my cart
    As a Visitor
    I want to be able to see those information of my cart

    Background:
        Given the store operates on a single channel in "United States"
        And the store has a product "T-shirt banana" priced at "$12.54"

    @api
    Scenario: Viewing items of my cart
        When I add 5 of them to my cart
        And I check items in my cart
        Then my cart should have 5 items of product "T-shirt banana"

    @api
    Scenario: Viewing items total of my cart
        When I add 5 of them to my cart
        And I check details of my cart
        Then my cart should have "$62.70" items total

