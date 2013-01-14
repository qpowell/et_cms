module EtCms
  class Page < ActiveRecord::Base
    attr_accessible :browser_title, :content, :exclude_from_menu, :link_url, :list_order, :meta_description, :name, :parent_id, :active

    extend FriendlyId
    friendly_id :name, use: :slugged

    def has_children
      Page.where(:parent_id => self.id, :active => true).count > 0
    end

    def children
      Page.where(:parent_id => self.id, :active => true).order("list_order ASC")
    end

    def breadcrumbs
      breadcrumb = %Q(<a href="#{self.slug}">#{self.name}</a>)
      parent_id = self.parent_id
      while (!parent_id.nil?)
        puts parent_id
        parent = Page.find(parent_id)
        breadcrumb = %Q(<a href="#{parent.slug}">#{parent.name}</a>) + " > " + breadcrumb
        parent_id = parent.parent_id
      end
      breadcrumb
    end
  end
end
