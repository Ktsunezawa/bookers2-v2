class DailyMailer < ApplicationMailer

  def daily_mail
    mail(subject: "daily mail", to: User.pluck(:email))
  end
end
