class CalendariosController < ApplicationController
    before_action :authenticate_user! #, except: [:index, :show]

  def show
  end

end
