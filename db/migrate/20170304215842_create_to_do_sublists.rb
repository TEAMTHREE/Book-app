class CreateToDoSublists < ActiveRecord::Migration[5.0]
  def change
    create_table :to_do_sublists do |t|

      t.timestamps
    end
  end
end
