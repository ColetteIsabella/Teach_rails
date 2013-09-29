class CreateTopics < ActiveRecord::Migration
  def up
    create_table :topics do |t|
      t.referen

      t.timestamps
    end
  end
end
