module EtCms
  module Admin
    class UserController < EtCms::AdminController
      def index
        @users = User.all
      end

      def new
        @user = User.new
      end

      def create
        @user = User.new(params[:user])
        @user.password = 'password'
        @user.password_confirmation = 'password'

        if @user.save
          redirect_to(admin_user_index_url, :notice => 'User was successfully created.')
        else
          render :action => "new"
        end
      end

      def edit
        @user = User.find(current_user)
      end

      def update
        @user = User.find(current_user)
        params[:user].delete(:password) if params[:user][:password].blank?
        params[:user].delete(:password_confirmation) if params[:user][:password].blank? and params[:user][:password_confirmation].blank?
        if @user.update_attributes(params[:user])
          flash[:notice] = "Successfully updated User."
          redirect_to admin_user_index_url
        else
          render :action => 'edit'
        end
      end

      def destroy
        @user = User.find(params[:id])
        if @user.destroy
          flash[:notice] = "Successfully deleted User."
          redirect_to admin_user_index_url
        end
      end
    end
  end
end
