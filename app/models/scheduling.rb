class Scheduling < ApplicationRecord
  include Fae::BaseModelConcern
  enum status: { aguardando: 0, finalizada: 1, cancelada: 2 }

  has_many :scheduling_services, dependent: :destroy
  has_many :services, through: :scheduling_services

  validates :client, presence: true  
  validates :services, presence: true

  belongs_to :client

  def fae_display_field
    id
  end

  def self.for_fae_index
    order(:id)
  end
  
end
