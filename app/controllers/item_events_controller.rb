class ItemEventsController < ApplicationController
	before_action :set_evento
	before_action :set_item_event, except: [:create]

	def create
	@item_event = @evento.item_event.create(item_event_params)
	redirect_to @evento
	end

	def destroy
	if @item_event.destroy
		flash[:success] = "Item event was deleted"
	else
		flash[:error] = "Item event was not deleted"
	end
	redirect_to @evento
	end

	def completo
		@item_event.update_attribute(:completo_em, Time.now)
		redirect_to @evento, notice: "Item event completed"
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
