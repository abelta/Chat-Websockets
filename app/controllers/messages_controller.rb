class MessagesController < WebsocketRails::BaseController

  def create
    WebsocketRails[:messages].trigger :new, message
  end

end
