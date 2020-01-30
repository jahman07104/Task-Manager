class TroubleshootingTasksController < ApplicationController
  before_action :find_ticket 
  before_action :find_task, only: [:edit, :update, :show, :destroy]

  def new
    @troubleshooting_task = @ticket.troubleshooting_tasks.new
  end

  def create
    @troubleshooting_task = @ticket.troubleshooting_tasks.new(troubleshooting_task_params)
      if @troubleshooting_task.save
        redirect_to ticket_path(@ticket), notice: "task succesfully created"
    else
      render :new
    end
  end

  def show
    
  end

  def edit
   
  end

  def update
    if @troubleshooting_task.update(troubleshooting_task_params)
      redirect_to ticket_path(@ticket), notice: "ticket succesfully updated"
    else
      render :edit
    end  
  end

  def destroy
    @troubleshooting_task.destroy
    redirect_to ticket_path(@ticket), notice: "ticket succesfully deleted"
  end


  private 

  def troubleshooting_task_params
    params.require(:troubleshooting_task).permit(:description)
  end

  def find_ticket
    @ticket = Ticket.find_by(id: params[:ticket_id])
  end

  def find_task
    @troubleshooting_task = @ticket.troubleshooting_tasks.find_by(id: params[:id])
  end
end