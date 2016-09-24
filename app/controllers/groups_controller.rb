class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
      @group = Group.find(params[:id])
      # 1.times do
      #   member = @group.members.build
      #   3.times { member.goals.build}
      # end
      @member_options = @group.members.map{ |m| [ m.name, m.id ] }
      # @members = @group.members
  end

  def edit
    p "ajax will ping this to serve up a partial w/ member + goals"
    render 'member_fields'
  end

  def update
  end

end
