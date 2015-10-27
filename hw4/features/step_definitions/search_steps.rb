
Then(/^the manager of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
  expect(arg2).to  eq(Project.find_by_title(arg1).manager)
end

Then(/^I will be on the projcet home page$/) do
  expect(page.current_path).to eq('/projects/')
end
