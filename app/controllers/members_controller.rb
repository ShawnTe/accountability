class MembersController < ApplicationController
  def index
  end

  def show
    @member = Member.find(params[:mem_id])
    @goals = @member.goals
    p @member + "In the Members show route"
  end

end
