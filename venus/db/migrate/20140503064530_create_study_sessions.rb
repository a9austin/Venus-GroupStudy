class CreateStudySessions < ActiveRecord::Migration
  def change
    create_table :study_sessions do |t|
      t.string :label
      t.string :location
      t.integer :subject_id
      t.integer :university_id

      t.timestamps
    end
  end
end
