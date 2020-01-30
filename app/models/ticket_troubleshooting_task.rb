class TicketTroubleshootingTask < ApplicationRecord
  belongs_to :ticket
  belongs_to :troubleshooting_task
end
