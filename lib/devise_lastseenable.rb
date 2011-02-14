unless defined?(Devise)
  require 'devise'
end
require 'devise_lastseenable'

Devise.add_module :lastseenable, :model => 'devise_lastseenable/model'

module DeviseLastseenable
end

require 'devise_lastseenable/rails'