class CreateAdmabouts < ActiveRecord::Migration[5.1]
  def change
    create_table :admabouts do |t|
      t.text :text

      t.timestamps
    end
  end
end
