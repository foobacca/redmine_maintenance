class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.column :address, :string
    end
  end

  def self.down
    drop_table :addresses
  end
end
