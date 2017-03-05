class AddNameToToDoSublist < ActiveRecord::Migration[5.0]
  def change
    add_column :to_do_sublists, :name, :string
    add_column :to_do_sublists, :quantity, :integer
  end
end
