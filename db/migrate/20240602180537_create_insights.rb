class CreateInsights < ActiveRecord::Migration[7.1]
  def change
    create_table :insights do |t|
      t.string :insight

      t.timestamps
    end
  end
end
