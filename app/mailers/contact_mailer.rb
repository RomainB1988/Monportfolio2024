class ContactMailer < ApplicationMailer
  default from: "portfoliobuisine@gmail.com" # Remplace par ton email

  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message
"
    mail(to: "portfoliobuisine@gmail.com", subject: "Nouveau message de contact") do |format|
      format.text { render plain: "Nom : #{@name}\nEmail : #{@email}\nMessage : #{@message}" }
    end
  end
end
