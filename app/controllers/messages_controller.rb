class MessagesController < ApplicationController
  before_action :set_group
  def index
    @message = Message.new
    @messages = @group.messages.includes(:user)
    respond_to do |format|
      format.html
      format.json { @new_message = @messages.where('id > ?', params[:id]) }
    end
  end

  def create
    @message = @group.messages.create(message_params)
    respond_to do |format|
      format.html { redirect_to group_messages_path(params[:group_id])  }
      format.json
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
end

