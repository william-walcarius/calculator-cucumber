Feature: Integer Arithmetic Expressions
  This feature provides a range of scenarios corresponding to the
  intended external behaviour of arithmetic expressions on integers.

  Background:
    Given I initialise a calculator

  # Each scenario can be seen as a test that can be executed with JUnit,
  # provided that each of the steps (Given, When, And and Then) are
  # implemented in a Java mapping file (CalculatorSteps.Java)

  Scenario Outline: Testing notation
    Given an integer operation <op>
    When I provide a first number <n1>
    And I provide a second number <n2>
    Then its <not> notation is <result>

    Examples:
      |op|n1|n2|not|result|
      |"+"|8|6|INFIX |( 8 + 6 )|
      |"+"|8|6|PREFIX|+ (8, 6) |
      |"+"|8|6|POSTFIX|(8, 6) +|
      |"-"|8|6|INFIX |( 8 - 6 )|
      |"-"|8|6|PREFIX|- (8, 6) |
      |"-"|8|6|POSTFIX|(8, 6) -|
      |"*"|8|6|INFIX |( 8 * 6 )|
      |"*"|8|6|PREFIX|* (8, 6) |
      |"*"|8|6|POSTFIX|(8, 6) *|
      |"/"|8|6|INFIX |( 8 / 6 )|
      |"/"|8|6|PREFIX|/ (8, 6) |
      |"/"|8|6|POSTFIX|(8, 6) /|
