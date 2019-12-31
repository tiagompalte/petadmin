class AddKindTypeToDiscount < ActiveRecord::Migration[5.0]
  def change
    add_column :discounts, :kind, :integer
  end
end
