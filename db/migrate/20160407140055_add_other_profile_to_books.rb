class AddOtherProfileToBooks < ActiveRecord::Migration
  def change
    add_column :books, :publishing_date, :date
    add_column :books, :language, :string
  end
end
