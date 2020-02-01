class UserTroubleshootingTask < ApplicationRecord
  belongs_to :user
  belongs_to :troubleshooting_task

  STATUS = ['in progress', 'pending', 'canceled', 'completed'].freeze

  validates :status, inclusion: { in: STATUS }, presence: true, on: :update
 

end
