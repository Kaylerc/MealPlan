class AddHipsterToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :hipster, :boolean
  end
end
