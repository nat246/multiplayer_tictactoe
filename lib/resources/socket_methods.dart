import 'package:multiplayer_tictactoe/resources/socket_client.dart';

class SocketMethods {
  final _socketClient = SocketClient.instance.socket!;

  void createRoom(String name) {
    if (name.isNotEmpty) {
      print('working' + name);

      _socketClient.emit('createRoom', {
        'nickname': name,
      });
    }
  }
}
