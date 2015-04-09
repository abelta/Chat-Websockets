class MessageInput


    constructor: (@dom) ->
        keyupHandler = (ev) =>
            if ev.keyCode == 13
                text = jQuery(ev.currentTarget).val()
                jQuery(ev.currentTarget).val('')
                @publish(text)
        @dispatcher = new WebSocketRails 'localhost:3000/websocket'
        jQuery(@dom).keyup(keyupHandler)


    publish: (text) ->
        message = user_name: window.application.user.name, text: text
        @dispatcher.trigger 'messages.create', message




# Initialize
jQuery('[data-widget=message-input]').each -> new MessageInput(this)
