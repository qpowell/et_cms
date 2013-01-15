class CreateEtCmsPages < ActiveRecord::Migration
  def change
    create_table :et_cms_pages do |t|
      t.text :content
      t.string :browser_title
      t.string :name
      t.string :meta_description
      t.boolean :exclude_from_menu
      t.string :link_url
      t.integer :list_order
      t.boolean :active
      t.string :slug
      t.string :ancestry

      t.timestamps
    end

    add_index :et_cms_pages, :slug, unique: true
    add_index :et_cms_pages, :ancestry
  end
end