class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
      @group = Group.find(1)
  end
end
