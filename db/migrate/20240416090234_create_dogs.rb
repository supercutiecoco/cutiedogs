class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :genre
      t.string :sex
      t.text :about
      t.integer :user_id

      t.timestamps
    end
  end
end
