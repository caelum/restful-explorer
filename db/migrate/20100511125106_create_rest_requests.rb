class CreateRestRequests < ActiveRecord::Migration
  def self.up
    create_table :rest_requests do |t|
      t.string :uri
      t.string :method
      t.string :content_type
      t.string :content
      t.string :parameters
      t.string :accepts
      t.string :login

      t.timestamps
    end
  end

  def self.down
    drop_table :rest_requests
  end
end
