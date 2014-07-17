require 'spec_helper'

describe 'Viewing an individual project' do
	it 'shows the projects details' do
		project = Project.create(
													 name: "Start-Up Project",
                           description: "A description of a start-up project",
                           target_pledge_amount: 100.00,
                           pledging_ends_on: 1.day.from_now,
                           website: "http://project-a.com")
		
		visit project_url(project)

	expect(page).to have_content(project.name)
  expect(page).to have_content(project.description)
  expect(page).to have_content(project.pledging_ends_on)
  expect(page).to have_content(project.website)
	end
end