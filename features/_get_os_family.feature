Feature: Get OS Family

  Scenario: Success Login
    When I ask to backend with "check_os"
    Then I will found "SmartOS" from backend at "family"

