class MessagesController < WebsocketRails::BaseController

  def create
    puts "create"
    puts "params"
    puts message
    #message = Message.new message.merge(name: current_user['name'])
    #broadcast_message 'new', message
    WebsocketRails[:messages].trigger :new, message
    puts "done"
  end

end
