class MachinesController < ApplicationController
  def index
    @owner = Owner.find(params[:owner_id])

  end

  def show
    @machine = Machine.find(params[:id])
    @snacks = @machine.snacks
    @average_price = @machine.avg_price
  end
end
