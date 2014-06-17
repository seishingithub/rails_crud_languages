class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :add_a_language
      t.string :country_spoken
    end
  end
end
