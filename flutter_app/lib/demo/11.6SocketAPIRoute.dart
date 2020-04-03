import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';


class SocketAPIRoute extends StatefulWidget {
  @override
  SocketAPIState createState() => new SocketAPIState();
}

class SocketAPIState extends State<SocketAPIRoute> {
  TextEditingController _controller = new TextEditingController();
  IOWebSocketChannel channel;
  String _text = "";


  @override
  void initState() {
    //创建websocket连接
    channel = new IOWebSocketChannel.connect('ws://echo.websocket.org');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WebSocket(内容回显)"),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Form(
              child: new TextFormField(
                controller: _controller,
                decoration: new InputDecoration(labelText: 'Send a message'),
              ),
            ),
            new StreamBuilder(
              stream: channel.stream,
              builder: (context, snapshot) {
                //网络不通会走到这
                if (snapshot.hasError) {
                  _text = "网络不通...";
                } else if (snapshot.hasData) {
                  _text = "echo: "+snapshot.data;
                }
                return new Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: new Text(_text),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _sendMessage,
        tooltip: 'Send message',
        child: new Icon(Icons.send),
      ),
    );
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      channel.sink.add(_controller.text);
    }
  }

//  _request() async{
//    //建立连接
//    var socket=await Socket.connect("baidu.com", 80);
//    //根据http协议，发送请求头
//    socket.writeln("GET / HTTP/1.1");
//    socket.writeln("Host:baidu.com");
//    socket.writeln("Connection:close");
//    socket.writeln();
//    await socket.flush(); //发送
//    //读取返回内容
//    _response =await socket.transform(utf8.decoder).join();
//    await socket.close();
//  }


  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }
}