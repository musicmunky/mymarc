class RemoveDirectionFromLines < ActiveRecord::Migration
  def change
	  remove_column :lines, :direction
  end
end
