class CreateAboutUs < ActiveRecord::Migration
  def change
    create_table :about_us do |t|
      t.string :store_name
      t.text :description

      t.timestamps null: false
    end
  end
end
