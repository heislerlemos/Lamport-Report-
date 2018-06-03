module ApplicationHelper

=begin
	def simple_error_messages_for(object_name)
	object = instante_variable_get(*@#{object_name}*)
		return if object.error.empty?
	end


markaby do 

	div.error_messages! do 
	 	h1 "#{pluralize{object.error.count, 'error'}} occurred"
	 	p  "There was a problem whit the following  fields: 	"
	 	ul do 
	 		object.error.each_full do |msg|
	 		li	msg
					end
				end
			end
		end

		def markaby(&block) 
		Markaby::Builder.new({}, self, &block) do 

		end
	end
=end
end


