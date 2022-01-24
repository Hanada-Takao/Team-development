class NoticeOfAgendaDeletionMailer < ApplicationMailer
  def notice_deletion_mail(agenda)
    @notice_deletion = agenda.team.members
    mail to: @notice_deletion.map(&:email).join(','), subject: "アジェンダ削除のお知らせ"
  end
end
