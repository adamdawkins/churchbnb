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



Given("I am on the new guest page") do
  visit new_guest_path
end

When("I create a guest account with name {string}") do |name|
  fill_in "guest[name]", with: name
  fill_in 'guest[desired_location]', with: "New York City"
  fill_in 'guest[meeting_times]', with: "Sunday mornings"
  fill_in 'guest[email]', with: "adam@guestchurch.com"
  fill_in 'guest[password]', with: "a very secret password"
  fill_in 'guest[password_confirmation]', with: "a very secret password"
  find('input[name="commit"]').click
end
