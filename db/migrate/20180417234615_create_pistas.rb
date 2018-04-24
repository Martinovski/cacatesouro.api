class CreatePistas < ActiveRecord::Migration[5.2]
  def change
    create_table :pistas do |t|
      t.string :numero
      t.string :localizacao
      t.string :pontos

      t.timestamps
    end
  end
end
