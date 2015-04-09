class MessageIndex


    constructor: (@dom) ->
        @dispatcher = new WebSocketRails 'localhost:3000/websocket'
        @channel = @dispatcher.subscribe 'messages'
        @channel.bind 'new', @appendMessage
        

    appendMessage: (message) =>
        messageView = jQuery("<article class='message_view'><header><span class='user_name'>#{message.user_name}</span></header><p class='message_text'>#{message.text}</p></article>")
        messageView.addClass('mine') if message['user_name'] == window.application.user.name
        jQuery(@dom).prepend messageView




# Initialize
jQuery('[data-widget=message-index]').each -> new MessageIndex(this)
