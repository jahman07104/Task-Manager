class UserTroubleshootingTasksController < ApplicationController
  def update
    @user_troubleshooting_task = UserTroubleshootingTask.find_by(id: params[:id])
    @ticket = @user_troubleshooting_task.troubleshooting_task.ticket
    if @user_troubleshooting_task.update(task_params)
      redirect_to root_path, notice: 'task updated'
    else
      render 'troubleshooting_tasks/edit'
    end
  end

  private

  def task_params
    params.require(:user_troubleshooting_task).permit(:notes, :status)
  end

end