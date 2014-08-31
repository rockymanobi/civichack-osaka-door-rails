class TasksController < WebsocketRails::BaseController
  def create
    p 'rec'
    p 'rec'
    p 'rec'
    p 'rec'
    p 'rec'
    # The `message` method contains the data received
    #task = Task.new message
    send_message :create_success, {hoge: "hoge"}, :namespace => :tasks
  end
end
