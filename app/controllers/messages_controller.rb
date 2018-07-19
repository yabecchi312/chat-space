class MessagesController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
  end

  def create
  end
end

