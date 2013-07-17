class CreateImportantEvents < ActiveRecord::Migration
  def change
    create_table :important_events do |t|
      t.string :event
      t.date :date
      t.string :details

      t.timestamps
    end
  end
end
