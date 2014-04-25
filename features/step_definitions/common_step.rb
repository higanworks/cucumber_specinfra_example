Given(/^I have remote host "(.*)"$/) do |host|
  @instance = return_backend(host)
end

