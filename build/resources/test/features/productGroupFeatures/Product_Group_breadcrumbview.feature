

Feature: Actors should be able to view their position in the page stack of the website by showing the menu hierarchy of the current page
  Rules:
  Breadcrumb view text is wrapped when the text exceeds the maximum length
  Correct path starting from the Home page is displayed
  Information follows attached wireframe

  @regression
  Scenario: Breadcrumb view must be displayed on all Product group pages and correct path is displayed
    Given the actor is on a Product group page Lift
    Then Breadcrumb view is displayed
#    And Breadcrumb view shows the correct path of the page within the website

  Scenario: Breadcrumb view text is wrapped when the maximum length is exceeded
    Given the actor is on a Product group page
    And the text of the breadcrumb view exceeds the maximum length
    Then the text of the breadcrumb view is wrapped

  Scenario: The Header component is present at the top of any Product group page
    Given the actor is on a Product group page
    Then a Header component is displayed

  Scenario: The Footer component is present on Product group pages
    Given the actor is on a Product group page
    Then a Footer component is displayed
