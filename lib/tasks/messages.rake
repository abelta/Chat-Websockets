namespace :messages do 

  desc "Simulates other users publishing to the chat."
  task simulate: :environment do

    loop do
      puts "hello!"
      user = User.new
      puts "user"
      puts user.inspect
      message = {user_name: user.name, text: Faker::Lorem.sentence}
      puts "message"
      puts message.inspect
      puts "WebsocketRails"
      puts WebsocketRails.inspect
      WebsocketRails[:messages].trigger :new, message
      puts "done"
      sleep rand(3).seconds
    end

  end
  
end