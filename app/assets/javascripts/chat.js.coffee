#= require websocket_rails/main
class @ChatClass
  constructor: (url, useWebsocket, socketClass) ->
    # これがソケットをつなぐ重要なもの
    # WebsocketRailsのインスタンスを生成するには上のrequireが必要
    @dispatcher = new socketClass(url, useWebsocket)
    # イベントを監視
    @bindEvents()

  events: () =>
    # ボタンが押されたらメッセージを送信
    $('#button').on 'click', @submitMessage
    # サーバーからsend_messageを受け取ったらreceiveMessageを実行
    @dispatcher.bind 'after_send_message', @receiveMessage

  submitMessage: (event) =>
    # サーバ側にsend_messageのイベントを送信
    # オブジェクトでデータを指定
    alert "hoge"
    @dispatcher.trigger 'send_message', { body: 'hogehoge' }

  receiveMessage: (message) =>
    # 受け取ったデータをとりあえずlog
    console.log message



$ ->
  alert 1
  task = {
    name: 'Start taking advantage of WebSockets',
    completed: false
  }

  dispatcher = new WebSocketRails('localhost:3000/websocket');
  dispatcher.bind 'tasks.create_success', (task)-> 
    console.log('successfully created ' + task.name)
  dispatcher.trigger('tasks.create', task);
  
