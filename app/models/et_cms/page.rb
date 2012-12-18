module EtCms
  class Page < ActiveRecord::Base
    attr_accessible :browser_title, :content, :exclude_from_menu, :link_url, :list_order, :meta_description, :name, :parent_id, :status

    extend FriendlyId
    friendly_id :name, use: :slugged
  end
end
