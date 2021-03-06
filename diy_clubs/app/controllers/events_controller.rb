class EventsController < ApplicationController
	def new
		@event = Event.new
		@music = Music.new
		@event.build_building
		@music = @event.musics.build

	end

	def index
		@event = Event.all
	end

	def update
		@event = Event.find(params[:id])
		@building = @event.building
		@event.building.update(building_params)
		if @event.save
			redirect_to events_path
		else 
			render :show 
	
		end

	end

	def show
		@event = Event.find(params[:id])
		@building = @event.building
		
	end

	def create
		@event = Event.create(event_params)
		
		if @event.save
			redirect_to events_url, notice: 'Event was successfully created.'
		else 
			render :new, notice: 'Didnt save. Try again' 
	
		end
	end

	def edit
		@event = Event.find(params[:id])
		@music = @event.musics
	end

	def building_params
		params.require(:building).permit(:capacity, :description, :need)
	end

	def event_params
		
		 params.require(:event).permit(:name, :location, :event_date,
									   building_attributes: [:capacity, :description, :need, :id],
									   music_attributes: [:type, :id, :_type, :name])
	end



end