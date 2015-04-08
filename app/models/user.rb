class User
  include ActiveModel::Model
  
  attr_accessor :name

  validates_presence_of :name

  
  def publish_message(text)
    Message.create user_name: self.name, text: text
  end

end
