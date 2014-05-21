class UsersSubjects < ActiveRecord::Migration
  def change
    create_table :users_subjects, id:false do |t|
      t.belongs_to :assembly
      t.belongs_to :part
    end
  end
end
