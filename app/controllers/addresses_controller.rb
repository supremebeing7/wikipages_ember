class AddressesController < ApplicationController
  def new
    contact = Contact.find(params[:contact_id])
    @address = contact.addresses.new
    render('/addresses/new.html.erb')
  end

  def create
    @address = Address.new(:address => params[:address],
                        :contact_id => params[:contact_id])
    if @address.save
      render('/addresses/success.html.erb')
    else
      render('/addresses/new.html.erb')
    end
  end

  def edit
    @address = Address.find(params[:id])
    render('/addresses/edit.html.erb')
  end

  def update
    @address = Address.find(params[:id])
    if @address.update(:address => params[:address])
      render('/addresses/success.html.erb')
    else
      render('/addresses/edit.html.erb')
    end
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    render('/addresses/destroy.html.erb')
  end
end
