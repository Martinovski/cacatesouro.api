class CreateJogos < ActiveRecord::Migration[5.2]
  def change
    create_table :jogos do |t|
      t.references :pessoa, foreign_key: true
      t.references :pista, foreign_key: true

      t.timestamps
    end
  end
end
