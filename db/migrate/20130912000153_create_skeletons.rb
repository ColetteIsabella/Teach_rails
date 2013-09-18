class CreateSkeletons < ActiveRecord::Migration
  def change
    create_table :skeletons do |t|
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
