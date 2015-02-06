class CreateHerokuTestApps < ActiveRecord::Migration
  def change
    create_table :heroku_test_apps do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
