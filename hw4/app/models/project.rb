class Project < ActiveRecord::Base
	def self.getUsers
		return ['Fitz', 'May', 'Simmons', 'Coulson', 'Skye', 'Ward']
	end

	def self.similar_managers(manager)
		Project.where(:manager => manager)
	end
end
