class RecreationCentersController < ApplicationController
  def show
    @recreation_center = RecreationCenter.where(objectid: params[:id]).first
  end
end
