class ChangeDataDateToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :date, :date
  end
end
