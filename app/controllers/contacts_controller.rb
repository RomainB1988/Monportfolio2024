class ContactsController < ApplicationController
  def create
    # Envoi de l'email via le mailer
    ContactMailer.contact_email(contact_params[:email], "Nouveau message de #{contact_params[:name]}", contact_params[:message]).deliver_now

    # Message de confirmation
    flash[:notice] = "Votre message a été envoyé avec succès."

    # Redirection vers la page d'accueil après succès
    redirect_to root_path
  rescue StandardError => e
    # Message d'erreur en cas de problème
    flash[:alert] = "Erreur lors de l'envoi du message : #{e.message}"
    redirect_to root_path
  end

  private

  # Strong parameters
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
