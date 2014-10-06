class UserMailer < ActionMailer::Base
  default from: "thisistheotherguy@gmail.com"
  
  def welcome(user)
    @user = user
    mail(:to => user.email, :subject => "welcome Photographer to Visider!")
  end
end
