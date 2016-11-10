class DiscussionsController < ApplicationController
  def view
    @discussion = Discussion.find(params[:discussion_id])
  end

  def push
    @discussion = Discussion.find(params[:discussion_id])
    @user = User.find(params[:user_id])
    @discussion.push @user
    redirect_to action: 'view'
  end

  def pop
    @discussion = Discussion.find(params[:discussion_id])
    @current = @discussion.pop
  end
end
