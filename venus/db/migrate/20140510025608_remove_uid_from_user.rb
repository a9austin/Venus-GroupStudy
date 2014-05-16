class RemoveUidFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :university_id 
  end
end
