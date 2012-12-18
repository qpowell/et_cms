module EtCms
  class ApplicationController < ActionController::Base
    before_filter :authenticate_user!
    layout :layout_by_resource

     protected

     def layout_by_resource
         "et_cms/application"
     end
  end
end
