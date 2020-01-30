class AddAdditionalTicketDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :customer_name, :string
    add_column :tickets, :customer_address, :string
    add_column :tickets, :customer_phone_number, :string
    add_column :tickets, :customer_details, :text
  end
end
