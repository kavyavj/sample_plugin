class Wickwall < ActiveRecord::Base
	act_as_sample sample_text_field: :last_tweet
end
