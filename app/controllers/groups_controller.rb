class GroupsController < ApplicationController
  #  before_action :logged_in_user, only: [:create, :destroy]

  def new
    @user = User.find(params[:user_id])
    @group = current_user.groups.build
  end
  
  def show
    @user = User.find(params[:user_id])
  end
  
  def create
    @user = User.find(params[:user_id])
    @group = current_user.groups.build(group_params)
    if @group.save
      flash[:success] = "Class created!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
  end

  private


    def group_params
      params.require(:group).permit(:name, :teacher)
    end
    
end
