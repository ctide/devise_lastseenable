class DeviseAddLastseenable<%= table_name.camelize %> < ActiveRecord::Migration
  def self.up
    add_column <%= table_name %>, :last_seen, :datetime
    end
  end
  
  def self.down
    remove_column <%= table_name %>, :last_seen
  end
end