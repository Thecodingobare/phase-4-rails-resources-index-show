class AddColumnToBirds < ActiveRecord::Migration[6.1]
  def change
    add_column :birds, :name, :string
  end
end
