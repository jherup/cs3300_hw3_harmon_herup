Feature: search for tasks by manager
 
  As a team member
  So that I can find tasks to which my teammates/I am working on or will be working on
  I want to include and search on manager information in tasks
 
Background: tasks in database
 
  Given the following tasks exist:
  | title                   | user    |manager     | due_date     |
  | Add User Profile        | Coulson     |Nick Fury    | 25-Nov-1992      |
  | Create Login Modal      | Skye    |Nick Fury    | 26-Oct-1984      |
  | Fix header Display      | May     |Coulson    | 21-Jul-1989      |
  | Add Mobile support      | Fitz    |        | 10-Aug-2011      |
  | Get fastload working    | Fitz    |Nick Fury    | 5-Jan-2001       |
  | Add Site overview       | Coulson     |        | 25-Apr-2001      |
  | Improve navigation      | Fitz    |Coulson    | 6-Apr-1968       |
  | Raid cookie jar         | Ward    |Coulson    | 5-Nov-2004       |
  | Improve security        | Simmons     |Coulson    | 12-Jun-1981      |
  | Steal milk              | May     |Coulson    | 21-Jun-2000      |
 
Scenario: add manager to existing task
  When I go to the edit page for "Raid cookie jar"
  And  I fill in "Manager" with "Coulson"
  And  I press "Update Project Task Info"
  Then the manager of "Raid cookie jar" should be "Coulson"
 
Scenario: find task with same manager
  Given I am on the details page for "Add User Profile"
  When  I follow "Find Tasks With Same Manager"
  Then  I should be on the Similar Tasks page for "Add User Profile"
  And   I should see "Create Login Modal"
  And   I should see "Get fastload working"
  But   I should not see "Improve navigation"
  But   I should not see "Raid cookie jar"
 
Scenario: can't find similar tasks if we don't know manager (sad path)
  Given I am on the details page for "Add Site overview"
  Then  I should not see "Nick Fury"
  When  I follow "Find Tasks With Same Manager"
  Then  I am on the ProjectManager home page
  And   I test should see "'Add Site overview' has no manager info"
  #And   I should see "'Add Site overview' has no manager info"
