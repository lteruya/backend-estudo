import 'package:shelf/shelf_io.dart' as shelf_io;

import 'server_handler.dart';

void main() async {
  var serv = ServeHandler();

  final server = await shelf_io.serve(
    serv.handler,
    'localhost',
    8080,
  );

  print('Nosso servidor foi iniciado http://localhost:8080');
}
