class ContactMailer < ApplicationMailer
  default from: 'ton_email@gmail.com' # Remplace par ton email

  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message

    mail(to: 'ton_email@gmail.com', subject: 'Nouveau message de contact') do |format|
      format.text { render plain: "Nom : #{@name}\nEmail : #{@email}\nMessage : #{@message}" }
    end
  end
end
