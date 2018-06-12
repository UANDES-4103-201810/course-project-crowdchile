class UseFundProjectMailer < ApplicationMailer
default from: 'notifications@example.com'
 
  def registration_confirmation(user,userfund)
    @user = user
    @userfund = userfund
    mail(to: @user.email, subject: 'Donation Confirmation')
  end
end
