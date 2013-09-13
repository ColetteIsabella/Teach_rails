class CreateSkeletons < ActiveRecord::Migration
  def change
    create_table :skeletons do |t|
      t.text :questions
      t.text :answer

      t.timestamps
    end
  end
end
