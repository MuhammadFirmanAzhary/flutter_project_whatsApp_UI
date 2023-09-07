import 'package:flutter/material.dart';

import '../models/calls.dart';
import '../theme.dart';

class CallsView extends StatelessWidget {
  const CallsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: statusList.length,
      itemBuilder: (context,index){
        final status = statusList[index];
        return ListTile(
          leading: const Icon( Icons.account_circle,
          size:58,
          color:Colors.black,
          ),
          title: Text(
            status.name,
            style: customTextStyle,
          ),
          subtitle: Text(status.statusDate),
         trailing: Icon(
          Icons.call,
          color: whatsAppLightGreen,
         ),
        );
      },
    );
  }
}