Feature: display list of tasks sorted by different criteria
 
  As an developer
  So that I can quickly browse tasks
  I want to see tasks sorted by title or due date

Background: tasks have been added to database

  Given the following tasks exist:
  | title                   | user    | due_date     |
  | Add User Profile        | Coulson | 25-Nov-1992  |
  | Create Login Modal      | Skye    | 26-Oct-1984  |
  | Fix header Display      | May     | 21-Jul-1989  |
  | Add Mobile support      | Fitz    | 10-Aug-2011  |
  | Get fastload working    | Fitz    | 5-Jan-2001   |
  | Add Site overview       | Coulson | 25-Apr-2001  |
  | Improve navigation      | Fitz    | 6-Apr-1968   |
  | Raid cookie jar         | Ward    | 5-Nov-2004   |
  | Improve security        | Simmons | 12-Jun-1981  |
  | Steal milk              | May     | 21-Jun-2000  |

  And I am on the ProjectManager home page

Scenario: sort tasks alphabetically
  When I follow "Task Title"
  Then I should see "Add Mobile support" before "Add Site overview"
  Then I should see "Add Site overview" before "Add User Profile"
  Then I should see "Add User Profile" before "Create Login Modal"
  Then I should see "Create Login Modal" before "Fix header Display"
  Then I should see "Fix header Display" before "Get fastload working"
  Then I should see "Get fastload working" before "Improve navigation"
  Then I should see "Improve navigation" before "Improve security"
  Then I should see "Improve security" before "Raid cookie jar"
  Then I should see "Raid cookie jar" before "Steal milk"
  # your steps here

Scenario: sort tasks in increasing order of due date
  When I follow "Due Date"
  Then I should see "Improve navigation" before "Improve security"
  Then I should see "Improve security" before "Create Login Modal"
  Then I should see "Create Login Modal" before "Fix header Display"
  Then I should see "Fix header Display" before "Add User Profile"
  Then I should see "Add User Profile" before "Steal milk"
  Then I should see "Steal milk" before "Get fastload working"
  Then I should see "Get fastload working" before "Add Site overview"
  Then I should see "Add Site overview" before "Raid cookie jar"
  Then I should see "Raid cookie jar" before "Add Mobile support"

  

