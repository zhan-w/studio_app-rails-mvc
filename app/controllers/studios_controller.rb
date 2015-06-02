class StudiosController < ApplicationController
	def index
		@studios = Studio.all
	end

  def show
    @studio = Studio.find(params[:id])
  end

  private
  def studio_params
    params.require(:studio).permit(:name, :location, :website, :work_sample)
  end
end