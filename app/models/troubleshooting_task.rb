class TroubleshootingTask < ApplicationRecord
  belongs_to :ticket
  has_many :user_troubleshooting_tasks, dependent: :destroy
  has_many :users, through: :user_troubleshooting_tasks

  validates :description, presence: true
  

end
