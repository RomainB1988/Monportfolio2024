class ContactMailer < ApplicationMailer
  default from: ENV["EMAIL_USERNAME"]

  # Méthode pour envoyer un email de contact
  def contact_email(name, email, message)
    @name = name
    @message = message

    mail(
      to: ENV["EMAIL_USERNAME"], # Votre adresse e-mail pour recevoir les messages
      subject: "Nouveau message de #{@name} via le formulaire de contact"
    )
  end
end
