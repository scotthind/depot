class ChangeZipCodeTypeAgain < ActiveRecord::Migration
  def change
    change_column :contact_us, :zip, :string
  end
end
