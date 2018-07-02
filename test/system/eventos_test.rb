require "application_system_test_case"

class EventosTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit eventos_url
  
   #  assert_selector "h1", text: "Evento"
   #end

     test "creating new a events" do 
  	get  	eventos_url

  	get   new_evento_url

  	assert_response :ok

  	assert_selector 'h1', name: "Test event" 

  end
end
