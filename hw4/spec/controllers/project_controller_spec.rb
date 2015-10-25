require 'spec_helper'

describe ProjectsController, type: :controller do 
	describe "POST #create" do
		context "with vaild attributes" do 
			it "creates a new project" do
				expect{
					post :create, project: FactoryGirl.attributes_for(:project)
				}.to change(Project, :count).by(1)
			end
			it "redirects to the home page" do
				post :create, project: FactoryGirl.attributes_for(:project)
				expect(response).to redirect_to projects_path
			end
		end
	end
	# describe "Post #destroy" do
	# 	context "with vaild attributes" do
	# 		it "deletes project" do 
	# 			expect {
	# 				attributes = FactoryGirl.attributes_for(:project)
	# 				Project.create(attributes)
	# 				post :delete, project: attributes
	# 			}.to change(Project, :count).by(1)
	# 		end
	# 	end
	# end
end