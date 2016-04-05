class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sid, :string
    add_column :users, :name, :string
    add_column :users, :school_class, :string
  end
end
