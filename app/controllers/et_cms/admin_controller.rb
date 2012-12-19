require_dependency "et_cms/application_controller"

module EtCms
  class AdminController < ApplicationController
    before_filter :authenticate_user!
  end
end
