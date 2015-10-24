
Then(/^the manager of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
  expect(arg2).to  eq(Project.find_by_title(arg1).manager)
end

When /^(?:|I )test follow "([^"]*)"$/ do |link|
  puts page.body
  visit '/projects/find_similar_tasks'
  puts page.body
end