class CreateIndications < ActiveRecord::Migration
  def change
    create_table :indications do |t|
      t.string :code
      t.string :name

      t.timestamps null: false
    end
  end
end
