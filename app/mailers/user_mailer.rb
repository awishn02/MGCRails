class UserMailer < ActionMailer::Base
  default from: "aaronwishnick@gmail.com"
 
  def welcome_email(user)
    @user = user
    @url  = 'http://www.google.com'
    mail(to: @user.email, subject: 'Welcome to the Midnight Golf Club')
  end
end
