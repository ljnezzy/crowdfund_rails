module ProjectsHelper
	def format_target_pledge_amount(project)
		if project.we_need_help?
     		content_tag(:strong, 'We need your Help!!')
    	else
   			number_to_currency(project.target_pledge_amount)
   		end
	end

	def time_remaining(project)
		from_time=Time.now
		to_time=project.pledging_ends_on
		days_remaining = distance_of_time_in_words(from_time, to_time)
		if from_time > to_time
			content_tag(:strong, 'All Done!')
		else
			content_tag(:strong, days_remaining)	
		end
	end
end
