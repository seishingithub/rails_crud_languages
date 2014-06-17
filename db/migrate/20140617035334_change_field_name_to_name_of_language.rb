class ChangeFieldNameToNameOfLanguage < ActiveRecord::Migration
  def change
    rename_column :languages, :add_a_language, :name_of_language
  end
end
