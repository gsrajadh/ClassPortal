class MaterialsController < ApplicationController
  def index c
    @materials = Material.where(:course_id => c.id)
  end

  def new
    @material = Material.new
  end

  def edit
    @material = Material.find(params[:id])
  end

  def create c
    @material = Material.new(material_params)
    @material[:course_id] = c.id
    if @material.save
      redirect_to @material
    else
      render 'new'
    end
  end

  def destroy c
    @material = Material.find(params[:id])

    @material.destroy

    redirect_to 'index c'
  end

  private

  def material_params
    params.require(:material).permit(:content)
  end
end
