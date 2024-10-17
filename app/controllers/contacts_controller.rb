class ContactsController < ApplicationController
  def create
    @name = params[:name]
    @message = params[:message]
    @user_email = params[:email]

    # Valider que tous les champs sont remplis
    if @name.blank? || @user_email.blank? || @message.blank?
      flash[:alert] = "Tous les champs sont requis."
      redirect_to new_contact_path and return
    end

    # Valider que l'email est valide
    unless @user_email =~ /\A[^@\s]+@[^@\s]+\z/
      flash[:alert] = "L'email est invalide."
      redirect_to new_contact_path and return
    end

    # Envoi de l'email si tout est correct
    ContactMailer.contact_email(@name, @user_email, @message).deliver_now
    flash[:notice] = "Merci #{@name}, votre message a bien été envoyé."
    redirect_to new_contact_path
  end
end
