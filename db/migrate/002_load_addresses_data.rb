require 'active_record/fixtures'

class LoadAddressesData < ActiveRecord::Migration
  def self.up
    down
    directory = File.join(File.dirname(__FILE__), "data")
    Fixtures.create_fixtures(directory, "addresses")
  end

  def self.down
    Address.delete_all
  end
end
