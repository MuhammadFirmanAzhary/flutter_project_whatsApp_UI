import 'package:flutter/material.dart';
import 'package:whatsap_app/models/status.dart';
import 'package:whatsap_app/theme.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
         
        );
      },
    );
  }
}