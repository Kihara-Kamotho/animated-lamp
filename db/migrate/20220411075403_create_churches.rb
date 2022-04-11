class CreateChurches < ActiveRecord::Migration[7.0]
  def change
    create_table :churches do |t|
      t.string :name
      t.string :address
      t.string :vision
      t.string :email

      t.timestamps
    end
  end
end