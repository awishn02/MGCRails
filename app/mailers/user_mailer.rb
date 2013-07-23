class UserMailer < ActionMailer::Base
  default from: "aaronwishnick@gmail.com"
 
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to the Midnight Golf Club')
  end
  
  def restore(user)
    @user = user
    @url = 'restore://username/'+user.username
  end
end
