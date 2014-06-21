class ContatosController < ApplicationController

  include Databasedotcom::Rails::Controller

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
    @accounts = Account.all
  end

  def create

    @contact = Contact.new(params[:contact])
    @contact['OwnerId'] = '005o0000000IcO0AAK'

    Thread.new {
      @contact.save
    }

    redirect_to :action => "index"
  end
end
