require 'devise_lastseenable/hooks/lastseenable'

module Devise
  module Models
    module Lastseenable
      def stamp!
        if self.last_seen < 5.minutes.ago
          self.update_attribute(:last_seen, DateTime.now)
        end
      end
    end
  end
end
