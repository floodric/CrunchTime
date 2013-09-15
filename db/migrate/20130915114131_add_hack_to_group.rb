class AddHackToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :hack, :string
  end
end
