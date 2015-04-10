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
        handleSuccess = ->
            # Do nothing.
        handleFailure = ->
            new Flash "There's been an error.", 'error'
        message = user_name: window.application.user.name, text: text
        @dispatcher.trigger 'messages.create', message, handleSuccess, handleFailure




# Initialize
jQuery('[data-widget=message-input]').each -> new MessageInput(this)
