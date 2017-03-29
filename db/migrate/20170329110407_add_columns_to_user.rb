class AddColumnsToUser < ActiveRecord::Migration[5.1]


    def self.up
        add_column :users, :full_name, :string
        add_column :users, :bio, :text
        add_column :users, :website, :string
    end

    def self.down
        remove_column :users, :full_name
        remove_column :users, :bio
        remove_column :users, :website
    end
end
