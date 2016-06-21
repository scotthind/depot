class CreateContactUs < ActiveRecord::Migration
  def change
    create_table :contact_us do |t|
      t.string :store_name
      t.text :phone
      t.text :email
      t.text :street
      t.text :city
      t.text :state
      t.decimal :zip

      t.timestamps null: false
    end
  end
end
