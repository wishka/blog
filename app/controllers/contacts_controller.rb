class ContactsController < ApplicationController
  def new
  end

  private
  def contact_params
    params.require(:contact).permit(:email, :message)# Запомнить!! Необходимо для разрешения использования params
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      @contact.save
    else
      render action: 'new'
    end
  end
end
