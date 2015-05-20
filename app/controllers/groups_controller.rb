class GroupsController < ApplicationController
  #  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @group = current_user.groups.build(group_params)
    @user = User.find(params[:id])
    if @group.save
      flash[:success] = "Class created!"
      redirect_to @user
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private


    def group_params
      params.require(:group).permit(:name, :teacher)
    end
    
end
