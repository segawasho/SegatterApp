class RelationshipsController < ApplicationController
  before_action :authenticate_user

  def create
    @relationship = Relationship.new(user_id: @current_user.id, follow_id: params[:follow_id])
    user = User.find_by(id: @relationship.follow_id)
    @relationship.save
    flash[:notice] = "#{user.name}さんをフォローしました。"
    redirect_to("/users/#{params[:follow_id]}")
  end

  def destroy
    @relationship = Relationship.find_by(user_id: @current_user.id, follow_id: params[:follow_id])
    user = User.find_by(id: @relationship.follow_id)
    @relationship.destroy
    flash[:notice] = "#{user.name}さんのフォローを外しました。"
    redirect_to("/users/#{params[:follow_id]}")
  end

end
