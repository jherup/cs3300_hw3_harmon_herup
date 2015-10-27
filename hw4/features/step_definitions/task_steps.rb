# Add a declarative step here for populating the DB with tasks.

Given /the following tasks exist/ do |task_table|
  task_table.hashes.each do |task|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that task to the database here.
    Project.create({:title => task["title"], :user => task["user"], :due_date => task["due_date"], :manager => task["manager"]})
  end
  #fail "Unimplemented"
end



# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  if (page.body =~ /.*#{e1}.*#{e2}.*/m) != 0
    fail "String #{e1} not found before #{e2}"
  end
  #fail "Unimplemented"
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I unselect the following users: Skye, Coulson, Ward"
#  "When I select the following users: Coulson"

When /I (un)?select the following users: (.*)/ do |uncheck, user_list|
  if uncheck=="un"
    user_list.split(', ').each do |current_user|
      step %{I uncheck "users_#{current_user}"}
    end
  else
    user_list.split(', ').each do |current_user|
      step %{I check "users_#{current_user}"}
    end
  end
  # HINT: use String#split to split up the user_list, then
  #   iterate over the users and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  #fail "Unimplemented"
end

Then /I should see the following tasks: (.*)/ do |task_list|
  task_list.split(', ').each do |current_task|
    step %{I should see #{current_task}}
  end
end

Then /I should not see the following tasks: (.*)/ do |task_list|
  task_list.split(', ').each do |current_task|
    step %{I should not see #{current_task}}
  end
end

Then /I should see all the tasks/ do
  if page.all("table#projects tr").count - 1 != Project.count
    fail "Not equal"
  end
  #fail "Unimplemented"
end