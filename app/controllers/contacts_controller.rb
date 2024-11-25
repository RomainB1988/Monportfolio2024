def create
  ContactMailer.contact_email(contact_params).deliver_now
  flash[:notice] = "Votre message a été envoyé !"
  redirect_to root_path
end

private

def contact_params
  params.require(:contact).permit(:name, :email, :message)
end
