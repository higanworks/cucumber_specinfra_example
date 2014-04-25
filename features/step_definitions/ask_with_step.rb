When(/^I ask to backend with "(.*)"$/) do |method|
  @result = backend.send(method.to_sym)
end

Then(/^I will found "(.*)" from backend at "(.*)"$/) do |exp, key|
  raise unless @result[key.to_sym] == exp
end
