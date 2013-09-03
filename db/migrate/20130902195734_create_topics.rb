class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :learn

      t.timestamps
    end
  end
end
