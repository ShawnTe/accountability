class MembersController < ApplicationController
  def index
  end

  def new
  end

  def create
    
  end

  def show
    @member = Member.find(params[:mem_id])
    @goals = @member.goals
    p @member
    p "* " * 50
  end

end
