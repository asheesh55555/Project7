class Addcolumn1 < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :surname, :string
  	add_column :users, :mobile_number, :string
  	add_column :users, :birth_day, :date
  	add_column :users, :gender, :string

  end
end
