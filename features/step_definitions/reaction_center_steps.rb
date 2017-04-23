When(/^I go the the recreation center index page$/) do
  visit recreation_centers_path
end

When(/^I go the the recreation center page with objectid of (\d+)$/) do |arg1|
  visit recreation_center_path(arg1)
end

Then(/^I see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Given(/^there is a recreation center with:$/) do |table|
  table.hashes.each do |hash|
    rec_center = RecreationCenterDataObject.new(hash)
    FactoryGirl.create(:recreation_center,
                       objectid: rec_center.objectid,
                       name: rec_center.name,
                       address: rec_center.address,
                       status: rec_center.status
                      )
  end
end
