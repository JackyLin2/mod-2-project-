class CreateCasts < ActiveRecord::Migration[6.0]
  def change
    create_table :casts do |t|
      t.integer :movie_id
      t.integer :celebrity_id 
      t.timestamps
    end
  end
end
