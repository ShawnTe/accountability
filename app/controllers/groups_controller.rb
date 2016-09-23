class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
      @group = Group.find(params[:id])
      @member_options = @group.members.map{ |m| [ m.name, m.id ] }
      # @members = @group.members
  end

end
