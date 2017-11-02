class CreateAaaas < ActiveRecord::Migration[5.1]
  def change
    create_table :aaaas do |t|
      t.string :name

      t.timestamps
    end
  end
end
