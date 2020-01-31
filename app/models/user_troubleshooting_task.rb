class UserTroubleshootingTask < ApplicationRecord
  belongs_to :user
  belongs_to :troubleshooting_task
end
