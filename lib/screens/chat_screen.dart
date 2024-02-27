import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_chat_app/models/chat_user.dart';

import '../main.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.user});
  final ChatUser user;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: _appBar(),
        ),
      ),
    );
  }

  Widget _appBar(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 15,),
        IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.back, color: Colors.white,)),
        ClipRRect(borderRadius: BorderRadius.circular(mq.height * .03),
          child: CachedNetworkImage(
            height: mq.height * 0.05,
            width: mq.height * 0.05,
            imageUrl: widget.user.image,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) =>  const CircleAvatar(child: Icon(CupertinoIcons.person),),
          ),
        ),
      ],
    );
  }
}
