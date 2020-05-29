class RelationshipsController < ApplicationController
  before_action :authenticate_user

  def create
    @relationship = Relationship.new(user_id: @current_user.id, follow_id: params[:follow_id])
    @relationship.save
    redirect_to("/users/#{params[:follow_id]}")
  end

  def destroy
    @relationship = Relationship.find_by(user_id: @current_user.id, follow_id: params[:follow_id])
    @relationship.destroy
    redirect_to("/users/#{params[:follow_id]}")
  end

end
