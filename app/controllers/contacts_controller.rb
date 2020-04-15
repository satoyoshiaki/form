class ContactsController < ApplicationController

    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to new_contact_path
        else
            render "new"
        end
    end

    def new 
        @contact = Contact.new
    end
    private
    def contact_params
        params.require(:contact).permit(:email, :name, :content)
    end
end
