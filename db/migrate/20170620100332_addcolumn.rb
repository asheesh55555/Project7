class Addcolumn < ActiveRecord::Migration[5.1]
  def change
  	  add_column :articles, :gender, :string
  end
end
