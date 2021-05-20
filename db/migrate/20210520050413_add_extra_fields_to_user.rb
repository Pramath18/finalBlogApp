class AddExtraFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :Mobile_Number, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
