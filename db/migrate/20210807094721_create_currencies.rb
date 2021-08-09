class CreateCurrencies < ActiveRecord::Migration[6.1]
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :num_code
      t.string :char_code
      t.float :rate
    end
  end
end
