class VariableController < ApplicationController
  def list
    @variables = Variable.all
    render json: @variables.to_json
  end

  def create
    @variable = Variable.new(name: params[:name])

    if @variable.save
      render :status
      # puts "variable guardado."
    else
      render status: 500
    end
  end

  def update
    @variable = Variable.find_by(id: params[:id])
    @variable.name = params[:name]
    if @variable.save
      render :status
    else
      render status: 500
    end
  end

  def delete
    @variable = Variable.find_by(id: params[:id])

    if @variable.destroy
      render :status
      # puts "Variable borrado."
    else
      render status: 500
    end
  end

end
