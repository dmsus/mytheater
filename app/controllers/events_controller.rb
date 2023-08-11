class EventsController < ApplicationController
	def index
	  @event = Event.all
	end

	def create
	  Event.create(
        title: params[:event][:title],
        start_date: params[:event][:start_date]
        end_date: params[:event][:end_date]
  	  )
	end

	def delete
	  @event = Event.find(params[:id])
  	  @event.destroy
	end
end
