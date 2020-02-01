class TicketsController < ApplicationController
  before_action :find_ticket, only: [:edit, :update, :destroy, :show]

  def index
    @tickets =current_user.tickets

    @troubleshooting_tasks = current_user.troubleshooting_tasks

  end

  def show
    @troubleshooting_tasks = @ticket.troubleshooting_tasks
  end 
  
  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user

    if @ticket.save
      redirect_to tickets_path, notice: "ticket succesfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @ticket.update(ticket_params)
      redirect_to tickets_path, notice: "ticket succesfully updated"
    else
      render :edit
    end  
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_path, notice: "ticket succesfully deleted"
  end

  private

  def ticket_params
    params.require(:ticket).permit(:customer_name, :customer_address, :customer_phone_number, :customer_details)
  end

  def find_ticket
    @ticket = Ticket.find_by(id: params[:id])
  end
end
