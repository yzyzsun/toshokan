class AddBorrowerToBooks < ActiveRecord::Migration
  def change
    add_reference :books, :user, index: true, foreign_key: true
    add_column :books, :last_borrowed_at, :datetime
    add_column :books, :last_returned_at, :datetime
    add_column :books, :borrow_count, :integer, default: 0
  end
end
