# ChatController(場所は普通のコントローラーの場所で構いません)
class ChatController < WebsocketRails::BaseController
  def new_message
    # messageという変数が送られてくる
    send_message :after_send_message, message
  end
end
