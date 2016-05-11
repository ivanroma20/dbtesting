Feature: Movie Database Updated from raw File
  Business requirement 1: Movie details from row file captured in database
  Business requirement 2: Movie details are sorted and rating greater than 3 is stored separately

  Scenario:  Movie details from row file captured in database without duplication
    Given raw data is available
    When jobs are completed successfully
    Then all data is captured
    And Data is validated

