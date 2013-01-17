class Ckeditor::Picture < Ckeditor::Asset
  has_attached_file :data,
                    {:styles => { :content => '800>', :thumb => '118x100#' }}.merge(PAPERCLIP_STORAGE_OPTIONS)
	
	validates_attachment_size :data, :less_than => 5.megabytes
	validates_attachment_presence :data
	
	def url_content
	  url(:content)
	end
end
