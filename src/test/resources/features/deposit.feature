Feature: deposit
  As a customer
  I want to deposit from my account using ATM

Background:
  Given a customer with id 1 and pin 111 with balance 2000 exists
  And I login to ATM with id 1 and pin 111

Scenario: Deposit with 500 baht
  When I deposit 500 to my account
  Then my account balance is 2500

Scenario: Deposit with 1000 baht
  When I deposit 1000 to my account
  Then my account balance is 3000

Scenario: Deposit with negative number
  When I deposit with negative number -500 to my account
  Then I cannot deposit and balance is 2000