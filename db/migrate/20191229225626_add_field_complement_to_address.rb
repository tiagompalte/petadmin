class AddFieldComplementToAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :complement, :string
  end
end
