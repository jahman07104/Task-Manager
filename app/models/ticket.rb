class Ticket < ApplicationRecord
  belongs_to :user
  has_many :troubleshooting_tasks, dependent: :destroy
  has_many :ticket_troubleshooting_tasks

  validates :customer_name, :customer_address, :customer_phone_number, presence: true
  validates :customer_phone_number, numericality: { only_integer: true }
end
