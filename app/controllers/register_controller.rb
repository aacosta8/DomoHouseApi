class RegisterController < ApplicationController
  def list
    @registers = Register.all
    render json: @registers.to_json
  end

  def create
    @register = Register.new(sensor_id: params[:sensor], variable_id: params[:variable], value: params[:value])
    # @variable = Variable.find_by(id: params[:variable])
    # @sensor = Sensor.find_by(id: params[:sensor])
    # @sensor.registers.create(variable: @variable, value:)
    #
    if @register.save
      render :status
    else
      render status: 500
    end


  end
end
