class ItemEventsController < ApplicationController
	before_action :set_evento

	def create
	@item_event = @evento.item_event.create(item_event_params)
	redirect_to @evento
	end

	def destroy
	@item_event = @evento.item_event.find(params[:id])
	if @item_event.destroy
		flash[:success] = "Item event was deleted"
	else
		flash[:error] = "Item event was not deleted"
	end
	redirect_to @evento
	end

	private 

	def set_evento
	@evento = Evento.find(params[:evento_id])
	end

	def item_event_params
	params[:item_event].permit(:content)
	end
end
