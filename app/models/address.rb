class Address < ApplicationRecord
  include Fae::BaseModelConcern
  def fae_display_field
    
  end

  include Fae::BaseModelConcern
  def fae_display_field
    
  end
  def fae_display_field
    zip_code
  end

  def self.for_fae_index
    order(:zip_code)
  end

  validates :zip_code, presence: true, length: {minimum: 8, maximum: 8}
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :client, presence: true

  belongs_to :client
end
