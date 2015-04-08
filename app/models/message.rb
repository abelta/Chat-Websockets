class Message

  include ActiveModel::Model
  
  attr_accessor :user_name, :text

  validates_presence_of :user_name
  validates_presence_of :text


end
