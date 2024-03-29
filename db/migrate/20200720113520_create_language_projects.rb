class CreateLanguageProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :language_projects do |t|
      t.references :project, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
