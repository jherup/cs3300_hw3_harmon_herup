class AddManagerToProjects < ActiveRecord::Migration
  def up
    add_column :projects, :manager, :string
  end
  def down
  	remove_column :projects, :manager
  end
end
