class Project < ApplicationRecord
	def we_need_help?
		target_pledge_amount.blank? || target_pledge_amount > 5000
	end
end
