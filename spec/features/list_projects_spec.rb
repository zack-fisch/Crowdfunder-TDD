require 'spec_helper'

describe 'Viewing the list of projects' do
	it 'shows three project names' do 

		project1 = Project.create(
							name: "Start-Up Project",
               description: "A description of a start-up project",
               target_pledge_amount: 100.00,
               pledging_ends_on: 1.day.from_now,
               website: "http://project-a.com")

		visit projects_url
		
		expect(page).to have_text("1 Project")
		expect(page).to have_content(project1.name)
		expect(page).to have_content(project1.description)
		expect(page).to have_content(project1.target_pledge_amount)
		expect(page).to have_content(project1.pledging_ends_on)
		expect(page).to have_content(project1.website)

	end

end