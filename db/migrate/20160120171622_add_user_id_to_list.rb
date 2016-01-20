class AddUserIdToList < ActiveRecord::Migration
  def change
    add_column :lists, :users, :integer
  end
end
