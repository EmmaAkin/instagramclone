class ChangePhoneNumberTypeInUsers < ActiveRecord::Migration[5.1]
    def self.up
        change_column :users, :phonenumber, :string
    end

    def self.down
        change_column :users, :phonenumber, :integer
    end
end
