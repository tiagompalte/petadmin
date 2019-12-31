class Scheduling < ApplicationRecord
  include Fae::BaseModelConcern
  enum status: { aguardando: 0, finalizada: 1, cancelada: 2 }

  has_many :scheduling_services, dependent: :destroy
  has_many :services, through: :scheduling_services

  validates :client, presence: true  
  validates :services, presence: true

  belongs_to :client

  after_save :schedule_emails

  def fae_display_field
    id
  end

  def self.for_fae_index
    order(:id)
  end

  def schedule_emails
    title = "Pet Admin - Scheduling Services"
    body = "Olá, #{self.client.name}, \n Não esqueça que está agendado para o dia #{self.date_time.inspect} os seguintes serviços: #{self.services.map {|s| s.title} * ','}.\n O preço previsto é de $#{self.services.map {|s| s.price }.reduce(0, :+)}"
    SchedulingJob.perform_later self.client, title, body
  end
  
end
