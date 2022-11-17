class AddAtributtesToUser < ActiveRecord::Migration[7.0]
  def change
    change_table :users, bulk: true do |t|
      t.string   :user_type, null: false
      t.string   :document
      t.date     :birthday
    end
  end
end
