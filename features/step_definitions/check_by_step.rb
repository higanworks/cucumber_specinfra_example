When(/^I check package "(.*)" installed with "(.*)"$/) do |pkg, version|
  raise unless backend.check_installed(pkg, version)
end
