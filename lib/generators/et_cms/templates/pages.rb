class CreateEtCmsPages < ActiveRecord::Migration
  def change
    create_table :et_cms_pages do |t|
      t.text :content
      t.string :browser_title
      t.string :name
      t.integer :parent_id
      t.string :meta_description
      t.boolean :exclude_from_menu
      t.string :link_url
      t.integer :list_order
      t.string :status
      t.string :slug

      t.timestamps
    end

    add_index :et_cms_pages, :slug, unique: true
  end
end