require 'spec_helper'

describe 'Viewing the list of projects' do
	it 'shows three project names' do 
		visit projects_url
		
		expect(page).to have_text("3 Projects")
		expect(page).to have_content("Project 1")
		expect(page).to have_content("Project 2")
		expect(page).to have_content("Project 3")
	end

end