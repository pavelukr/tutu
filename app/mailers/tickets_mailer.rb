class TicketsMailer < ApplicationMailer
  def buy_ticket(user, ticket)
    @user = user
    @ticket = ticket
    mail(to: user.email, subject: 'You bought this ticket')
  end

  def destroy_ticket(user, ticket)
    @user = user
    @ticket = ticket
    mail(to: user.email, subject: 'You deleted this ticket')
  end
end
