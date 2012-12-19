module EtCms
  class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :token_authenticatable, :confirmable,
    # :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
  
    # Setup accessible (or protected) attributes for your model
    attr_accessible :email, :password, :password_confirmation, :remember_me
    # attr_accessible :title, :body

    after_create { |user| user.send_reset_password_instructions } unless ['test'].include? Rails.env

    def password_required?
      new_record? ? false : super
    end
  end
end
