Feature: Product_Summary

  @Product_Summary_Favorite_account_[MOB_ANDROID]
  Scenario Outline: Product_Summary_Favorite_account_[MOB_ANDROID]

    Given Open Application
    #And Wait "100" seconds
    And Select User from Excel "<rowindex>" columnName "username" and login
    And Wait for element by resource id "nlb-bottom-nav-button" to appear
    #And Change language to english
    When Click "My Products"
    And Wait for element by text "Edit list"
    And Click on element by text "Edit list"
    And Wait for element by text "Set favorite account"
    And Click on element by text "Set favorite account"
    And Wait for element by text "Apply"
    And Assert element by text "Default sorting"
    And Click on element by text from excel "<rowindex>" columnName "second_personal_account_iban"
    And Click on element by text "Apply"
    And Wait for element by text "Edit products view"
    And Click on element by desc "Back"
    And Wait for element by id "nlb-value-product-secondary-balance" to appear
    Then Assert first product shown in my products is favorite account from Excel "<rowindex>" columnName "second_personal_account_iban"

    Examples:
      | rowindex |
      |        1 |
