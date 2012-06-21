class CreatePatternsPatterns < ActiveRecord::Migration

  def up
    create_table :refinery_patterns do |t|
      t.string :name
      t.string :dimensions
      t.date :manufactured_on
      t.boolean :upright
      t.integer :photo_id
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-patterns"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/patterns/patterns"})
    end

    drop_table :refinery_patterns

  end

end
