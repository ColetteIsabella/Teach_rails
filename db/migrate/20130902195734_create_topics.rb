class CreateTopics < ActiveRecord::Migration
  def up
    create_table :topics do |t|
      t.references

      t.timestamps
    end
  end
end
