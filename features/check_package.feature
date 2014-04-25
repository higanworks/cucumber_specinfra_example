Feature: Check package

  Scenario Outline: Detect package
    When I check for backend "<package>" by "get_package_version"
    Then I will get "<pkg_full_str>" from result by "stdout"

    Scenarios: Installed
      | package  | pkg_full_str      |
      | openssl  | openssl-1.0.1fnb1 |
      | nginx    | nginx-1.5.7       |
      | gmake    | gmake-4.0         |
      | gcc47    | gcc47-4.7.3nb1    |
      | autoconf | autoconf-2.69nb3  |
