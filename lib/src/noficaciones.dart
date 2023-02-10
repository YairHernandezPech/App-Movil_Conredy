import 'package:flutter/material.dart';
import 'package:conredy/models/msj.dart';
import 'package:conredy/models/user.dart';

class pagina3 extends StatelessWidget {
  const pagina3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notificaciones"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Color.fromARGB(255, 209, 209, 209),
      //backgroundColor: Colors.white,
      body: Row(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                final Message chat = chats[index];
                return GestureDetector(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 15.0,
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(2),
                                decoration: chat.unread
                                    ? BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(40)),
                                        border: Border.all(
                                          width: 2,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        // shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                          ),
                                        ],
                                      )
                                    : BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      AssetImage(chat.sender.imageUrl),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.65,
                                padding: const EdgeInsets.only(
                                  left: 20,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              chat.sender.name,
                                              style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'AkayaTelivigala',
                                              ),
                                            ),
                                            chat.sender.isOnline
                                                ? Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 5),
                                                    width: 7,
                                                    height: 7,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                                  )
                                                : Container(
                                                    child: null,
                                                  ),
                                          ],
                                        ),
                                        Text(
                                          chat.time,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black54,
                                            fontFamily: 'Lobster',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        chat.text,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black54,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  ChatScreen({required User user}) {}
}
