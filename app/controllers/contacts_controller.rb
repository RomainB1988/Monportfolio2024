class ContactsController < ApplicationController
  def new
    # Affiche le formulaire de contact
  end

  def create
    @name = params[:name]
    @message = params[:message]
    @user_email = params[:email]

    # Appel du Mailer pour envoyer l'email
    ContactMailer.contact_email(@name, @user_email, @message).deliver_now

    flash[:notice] = "Merci #{@name}, votre message a bien été envoyé."
    redirect_to new_contact_path
  end
end
