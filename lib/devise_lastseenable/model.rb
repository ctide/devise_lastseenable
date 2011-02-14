require 'devise_lastseenable/hooks/lastseenable'

module Devise
  module Models
    module Lastseenable
      def stamp!
        if current_user.last_seen.to_i < Time.now - 5.minutes
          current_user.last_seen = DateTime.now
          current_user.save!
        end
      end
    end
  end
end