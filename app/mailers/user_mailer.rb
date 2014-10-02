class UserMailer < ActionMailer::Base
  default from: "adamcarterdev@gmail.com"
  
  def welcome(user)
    @user = user
    mail(:to => user.email, :subject => "welcome to Visdir, photographer!")
  end
end