class AddQuantityToToDoSublist < ActiveRecord::Migration[5.0]
  def change
    add_column :do_sublists, :quantity, :integer
  end
end
