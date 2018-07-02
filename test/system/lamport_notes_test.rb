require "application_system_test_case"

class LamportNotesTest < ApplicationSystemTestCase
=begin
   test "visiting the index" do
     visit lamport_notes_url
  
     assert_selector "h1", text: "LamportNote"
  end
=end

  test "creating new a events" do 
  	get  	eventos_url

  	get   new_evento_url

  	assert_response :ok

  	assert_selector 'h1', name: "Test event" 

  end
end
