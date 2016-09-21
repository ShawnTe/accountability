class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
      @group = Group.find(params[:id])
      # @members = @group.members
  end

end
