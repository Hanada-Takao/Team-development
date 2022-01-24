class LeaderChangeMailer < ApplicationMailer
  def leader_change_mail(email)
    @new_leader_email = email
    mail to: @new_leader_email, subject: "チームのリーダーが移譲されました"
  end
end
