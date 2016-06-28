class ChangeZipCodeType < ActiveRecord::Migration
  def change
    change_column :contact_us, :zip, :integer
  end
end
