class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :tipo
      t.string :matricula
      t.string :escola

      t.timestamps
    end
  end
end
