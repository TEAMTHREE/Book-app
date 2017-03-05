class AddNameToToDoSublist < ActiveRecord::Migration[5.0]
  def change
    add_column :do_sublists, :name, :string
  end
end
