class CreateMonths < ActiveRecord::Migration[6.1]
  def change
    create_table :months do |t|
      t.float :balance
      t.numeric :month
      t.numeric :year
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
