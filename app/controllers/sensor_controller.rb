class SensorController < ApplicationController

  def list
    @sensors = Sensor.all
    puts @sensors.last.name
    render json: @sensors.to_json
  end



  def create
    @sensor = Sensor.new(name: params[:name])

    if @sensor.save
      render :status
      # puts "Sensor guardado."
    else
      render status: 500
    end
  end

  def delete
    @sensor = Sensor.find_by(id: params[:id])

    if @sensor.destroy
      render :status
      # puts "Sensor borrado."
    else
      render status: 500
    end

  end

  def update
    @sensor = Sensor.find_by(id: params[:id])
    @sensor.name = params[:name]
    if @sensor.save
      render :status
    else
      render status: 500
    end
  end

  # private
  #
  # def sensor_params
  #   # params.require()
  # end
end
