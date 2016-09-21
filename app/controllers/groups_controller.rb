class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
      @group = Group.find(params[:id])
      @member_options = @group.members.map{ |member| [ member.name, member.id ] }
      # @members = @group.members
  end

end
