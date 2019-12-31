class Discount < ApplicationRecord
  include Fae::BaseModelConcern
  enum kind: { porcentual: 0, dinheiro: 1 }

  validates :title, uniqueness: true, presence: true
  validates :value, uniqueness: true, presence: true

  def fae_display_field
    title
  end

end
