class AddCourtAndHouseToEvents < ActiveRecord::Migration
  def change
    add_column :events, :court_id, :integer
    add_column :events, :house_id, :integer
    add_column :events, :category_id, :integer
  end
end
