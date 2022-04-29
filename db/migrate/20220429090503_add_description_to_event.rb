class AddDescriptionToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :details, :text
    add_column :events, :time, :datetime
  end
end
