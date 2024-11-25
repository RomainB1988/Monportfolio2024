class ContactMailer < ApplicationMailer
  def contact_email(contact_params)
    @name = contact_params[:name]
    @message = contact_params[:message]

    mail(
      to: "rom.buisine@gmail.com",
      subject: "Nouveau message de votre portfolio"
    )
  end
end
