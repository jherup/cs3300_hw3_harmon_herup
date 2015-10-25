require 'spec_helper'

describe Project do 
	it "has a vaild factory" do
		expect(FactoryGirl.create(:project)).to be_valid
	end
	it "returns projects with same manager" do
		Project.delete_all
		expect(FactoryGirl.create(:project,title: "My life is a black hole of boredom and despair. So basically you've been doing homework", manager: "Josh")).to be_valid
		expect(FactoryGirl.create(:project,title: "Rewarding yourself with an hour on Facebook, just for writing your name on your homework.", manager: "Nathan")).to be_valid
		expect(FactoryGirl.create(:project, title: "With homework, school prepares students for overtime. With reports, it prepares them for payday.", manager: "Nathan")).to be_valid
		expect(FactoryGirl.create(:project, title: "Homework is a best work,but if human hate it its a worst work.", manager: "Josh")).to be_valid
		expect(Project.similar_managers("Josh").count).to eq(2)
	end


end