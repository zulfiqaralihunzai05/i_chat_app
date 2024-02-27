import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_chat_app/models/chat_user.dart';

import '../main.dart';
import '../screens/chat_screen.dart';

class ChatUserCart extends StatefulWidget {
  final ChatUser user;
  const ChatUserCart({super.key, required this.user});

  @override
  State<ChatUserCart> createState() => _ChatUserCartState();
}

class _ChatUserCartState extends State<ChatUserCart> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: mq.width * .04, vertical: 4),
     // color: Colors.blue.shade200,
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => ChatScreen(user: widget.user,)));
        },
        child: ListTile(

          leading: ClipRRect(borderRadius: BorderRadius.circular(mq.height * .3),
            child: CachedNetworkImage(
              height: mq.height * 0.055,
              width: mq.height * 0.055,
              imageUrl: widget.user.image,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) =>  const CircleAvatar(child: Icon(CupertinoIcons.person),),
            ),
          ),
          title: Text(widget.user.name),
          subtitle: Text(widget.user.about, maxLines: 1,),
            trailing: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade400,
                borderRadius: BorderRadius.circular(10)
              ),
            )
           //trailing: const Text('11:00 PM', style: TextStyle(color: Colors.black54),),
        ),
      ),
    );
  }
}
