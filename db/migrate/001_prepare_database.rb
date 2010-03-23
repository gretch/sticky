class PrepareDatabase < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_name
      t.string :full_name
      t.string :email,            :null => false
      t.string :password_salt,    :null => false
      t.string :persistence_token
      t.string :crypted_password
      t.boolean :admin, :default => false
      t.datetime :deleted_at
      t.timestamps
    end

    create_table :ideas do |t|
      t.text :description
      t.string :notes
      t.string :status, :default => "new"
      t.string :author_name
      t.integer :author_id
      t.references :user
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def self.down
    drop_table :users
    drop_table :ideas
  end
end
