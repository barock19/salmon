class CompanyController < ApplicationController
  def contact
    
  end
  
  def send_contact
    Contact.contact_email(params[:message], params[:sender_email], params[:subject]).deliver
    flash[:notice] = "Thank you for your email!"
    render :action => :contact
  end
end
