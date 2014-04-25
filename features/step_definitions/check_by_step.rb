When(/^I check for backend "(.*?)" by "(.*?)"$/) do |str, method|
  @result = backend.send(method.to_sym, str)
end

Then(/^I will get "(.*)" from result by "(.*)"$/) do |exp, key|
  raise unless @result.send(key.to_sym).chomp == exp
end
