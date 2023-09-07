import 'package:flutter/material.dart';
import 'package:whatsap_app/models/chat.dart';

import '../theme.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:chatList.length,
      itemBuilder:(context,index){
        final chat = chatList[index];
        return Padding(
 padding: const EdgeInsets.all(8.0),
 child: Row(
   children: [
     // GAMBAR
     Image.network(
       chat.image,
       width: 58,
       height: 58,
     ),


     // COLUMN
     Expanded(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   chat.name,
                   style: customTextStyle,
                 ),
                 Text(chat.messageDate)
               ],
             ),
             const SizedBox(
               height: 5,
             ),
             Text(
               chat.mostRecentMessage,
               style: const TextStyle(color: Colors.black45, fontSize: 16),
               overflow: TextOverflow.ellipsis,
             )
           ],
         ),
       ),
     )
   ],
 ),
);

      }
    );
  }
}