namespace :messages do 

  desc "Simulates other users publishing to the chat."
  task simulate: :environment do

    loop do
      user = User.new
      message = {user_name: user.name, text: Faker::Lorem.sentence}
      WebsocketRails[:messages].trigger :new, message
      sleep rand(5).seconds
    end

  end
  
end