class RecreationCentersController < ApplicationController
  def index
    @recreation_centers = RecreationCenter.all
  end

  def show
    @recreation_center = RecreationCenter.where(objectid: params[:id]).first
  end
end
