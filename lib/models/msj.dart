import 'package:conredy/models/user.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: ironMan,
    time: '5:30 PM',
    text: 'Edilson publico una nueva casa ubicada en el frac 233.',
    unread: true,
  ),
  Message(
    sender: captainAmerica,
    time: '4:30 PM',
    text: 'Nueva comentario sobre tu nueva publicacion.',
    unread: true,
  ),
  Message(
    sender: blackWindow,
    time: '3:30 PM',
    text: 'A edilson le gusto y opino sobre tu nueva publicacion.',
    unread: false,
  ),
  Message(
    sender: spiderMan,
    time: '2:30 PM',
    text: 'A Yair le intereso tu casa y quiere ponerse en contacto comtigo.',
    unread: true,
  ),
  Message(
    sender: hulk,
    time: '1:30 PM',
    text: 'Nuevo me gusta',
    unread: false,
  ),
  Message(
    sender: thor,
    time: '12:30 PM',
    text:
        'Hubo un error no se pudo compartir tu publicacion revisa los detalles.',
    unread: false,
  ),
  Message(
    sender: scarletWitch,
    time: '11:30 AM',
    text: 'Jose te a contestado un cometarios ver más...',
    unread: false,
  ),
  Message(
    sender: captainMarvel,
    time: '12:45 AM',
    text:
        'Pepper & Morgan is fine. They\'re strong as you. Morgan is a very brave girl, one day she\'ll make.',
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN