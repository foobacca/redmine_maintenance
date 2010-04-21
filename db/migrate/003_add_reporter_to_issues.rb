class AddReporterToIssues < ActiveRecord::Migration
  def self.up
    add_column :issues, :reported_by, :string
    add_column :issues, :reporter_phone_or_email, :string
  end
  
  def self.down
    remove_column :issues, :reported_by
    remove_column :issues, :reporter_phone_or_email
  end
end

