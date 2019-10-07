class CreateCarsParts < ActiveRecord::Migration[5.2]
  def change
    create_table :cars_parts do |t|
      t.references :car
      t.references :part
      t.timestamps
    end
  end
end
