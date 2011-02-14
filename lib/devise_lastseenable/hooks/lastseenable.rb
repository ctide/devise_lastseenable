Warden::Manager.after_set_user do |record, warden, opts|
  if record.respond_to?(:stamp!)
    record.stamp!
  end
end