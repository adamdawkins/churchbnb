Given("I am on the new host page") do
  visit new_host_path
end

When("I create a host account with name {string}") do |name|
  fill_in "host[name]", with: name
  fill_in 'host[address]', with: "1 Times Square, New York, New York, USA"
  fill_in 'host[email]', with: "adam@hostchurch.com"
  fill_in 'host[password]', with: "a very secret password"
  fill_in 'host[password_confirmation]', with: "a very secret password"
  find('input[name="commit"]').click
end


