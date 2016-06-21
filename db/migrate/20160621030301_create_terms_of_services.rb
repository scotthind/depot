class CreateTermsOfServices < ActiveRecord::Migration
  def change
    create_table :terms_of_services do |t|
      t.string :store_name
      t.text :terms

      t.timestamps null: false
    end
  end
end
