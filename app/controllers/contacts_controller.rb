class ContactsController < ApplicationController
  before_action :confirm_logged_in
  before_action :find_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.where(user_id: session[:user_id])
    @user = User.find(session[:user_id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user_id = session[:user_id]
    if @contact.save
      redirect_to @contact
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to @contact
    else
      render "edit"
    end
  end

  def destroy
    @contact.destroy
    redirect_to contacts_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email)
  end

  def find_contact
    @contact = Contact.find(params[:id])
  end

end
