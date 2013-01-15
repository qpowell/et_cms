module EtCms
  class Page < ActiveRecord::Base
    has_ancestry
    attr_accessible :browser_title, :content, :exclude_from_menu, :link_url, :list_order, :meta_description,
                    :name, :parent_id, :active

    extend FriendlyId
    friendly_id :name, use: :slugged

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
