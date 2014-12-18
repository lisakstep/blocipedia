class AddDefaultToUserRole < ActiveRecord::Migration
  def change
    change_column :users, :role, :string, default: 'standard_member'
  end
end
