# class BuildingController < ApplicationController

# 	def new
# 		@building = Building.new
# 	end

# 	def show
# 		@building = Building.all
# 	end


# 	def create
# 		@building = Building.create(building_params)

# 		if @building.save
# 			redirect_to @building, notice: 'event was successfully created.'
# 		else 
# 			render :new, notice: 'Didnt save. Try again' 
# 		end
		
# 	end

# 	def edit
# 		@building = Building.find(params[:id])
# 	end


# 	def building_params
# 		params.require(:building).permit(:description, :capacity)
# 	end

# end
