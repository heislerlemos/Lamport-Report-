class ItemEventsController < ApplicationController
	before_action :set_evento
	before_action :set_item_event, except: [:create]

	def create
	
    @item_event = @evento.item_event.create(item_event_params)
	redirect_to @evento,  success:  "Item was created whit success"

	end

	def destroy
    @item_event.destroy
	redirect_to @evento, danger: "Item was deleted "
	end

	def completo
		@item_event.update_attribute(:completo_em, Time.now)
		redirect_to @evento, info: "Item event completed"
	end


	private 

	def set_evento
	@evento = Evento.find(params[:evento_id])
	end

	def set_item_event
	@item_event = @evento.item_event.find(params[:id])
	end

	def item_event_params
	params[:item_event].permit(:content)
	end
end
