class CreatePrivPolicies < ActiveRecord::Migration
  def change
    create_table :priv_policies do |t|
      t.string :store_name
      t.text :policy

      t.timestamps null: false
    end
  end
end
