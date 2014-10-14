class AddNameToThingies < ActiveRecord::Migration
  def change
    add_column :thingies, :name, :string
  end
end
