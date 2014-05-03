class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :label
      t.string :token

      t.timestamps
    end
  end
end
