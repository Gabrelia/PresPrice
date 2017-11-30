class MedicinesController < ApplicationController
	  def index
	    @medicines = Medicine.order(:name).where("name like ?", "%#{params[:term]}%")
	    render json: @searches.map(&:name)
	  end
end
