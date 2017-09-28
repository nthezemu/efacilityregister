module ApplicationHelper
	def error_messages_for(object)
		render(:patial =>application/error_messages,
			:locals => {:object => object})
	end
end
