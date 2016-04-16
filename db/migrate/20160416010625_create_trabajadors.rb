class CreateTrabajadors < ActiveRecord::Migration
  def change
    create_table :trabajadors do |t|
      t.string :nombre
      t.string :mail

      t.timestamps null: false
    end
  end
end
