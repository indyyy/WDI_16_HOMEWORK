class CreateAlpacas < ActiveRecord::Migration[5.2]
  def change
    create_table :alpacas do |t|
      t.text :url
      t.text :description

      t.timestamps
    end
  end
end
