class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.boolean :complete
      t.string :description
      t.boolean :processed

      t.timestamps
    end
  end
end
