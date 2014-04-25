Feature: Check package

  Scenario Outline: Detect package
    Given I check package "<package>" installed with "<version>"

    Scenarios: Installed
      | package  | version   |
      | openssl  | 1.0.1fnb1 |
      | nginx    | 1.5.7     |
      | gmake    | 4.0       |
      | gcc47    | 4.7.3nb1  |
      | autoconf | 2.69nb3   |
