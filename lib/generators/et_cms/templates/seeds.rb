EtCms::User.create(:email => "admin@example.com", :password => "password", :password_confirmation => "password")

EtCms::Page.create(:name => "Home", :content => "<h1>You are on the Home Page Dawg!!</h1>")