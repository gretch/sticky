class AddComments < ActiveRecord::Migration
  def self.up
    create_table :comments, :force => true do |t|
      t.string :title, :limit => 50, :default => ""
      t.string :comment, :default => ""
      t.datetime :created_at, :null => false
      t.integer :commentable_id, :default => 0, :null => false
      t.string :commentable_type, :limit => 15,
      :default => "", :null => false
      t.references :user, :default => 0, :null => false
      t.references :idea
      t.string :author_name
    end
  end
 
  def self.down
    drop_table :comments
  end
end
