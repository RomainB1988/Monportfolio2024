class ContactsController < ApplicationController
  def create
    # Appel au mailer avec les bons paramètres
    ContactMailer.contact_email(
      contact_params[:name],
      contact_params[:email],
      contact_params[:message]
    ).deliver_now

    # Message de confirmation
    flash[:notice] = "Votre message a été envoyé avec succès."

    # Redirection après succès
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
