class UserTroubleshootingTask < ApplicationRecord
  belongs_to :user
  belongs_to :troubleshooting_task

  STATUS = ['in progress', 'pending', 'canceled', 'completed'].freeze

  validates :status, inclusion: { in: STATUS }
  validates :status, presence: true
end
