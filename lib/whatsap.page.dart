import 'package:flutter/material.dart';
import 'package:whatsap_app/theme.dart';
import 'package:whatsap_app/widgets/calls_view.dart';
import 'package:whatsap_app/widgets/chat_view.dart';
import 'package:whatsap_app/widgets/status_view.dart';

class WhatsAppPage extends StatefulWidget {
  const WhatsAppPage({super.key});

  @override
  State<WhatsAppPage> createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage> with SingleTickerProviderStateMixin {
  List<Widget> tabs = const [
    Tab(
      icon: Icon(Icons.camera_alt),
    ),
    Tab(
      child: Text("CHAT"),
    ),
    Tab(
      child: Text("STATUS"),
    ),
    Tab(
     child: Text("CALLS"),
    ),
  ];
  TabController? tabController;
  
  IconData fabIcon= Icons.message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        backgroundColor: whatsAppGreen,
        bottom: TabBar(controller: tabController, tabs: tabs,
        indicatorColor: Colors.white,),
      ),
      body: TabBarView(
        controller: tabController,
        children:const [
          Center(
            child: Icon(Icons.camera_alt),
          ),
          ChatView(),
          StatusView(),
          CallsView(),
        
      ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child:  Icon (fabIcon),
        backgroundColor: whatsAppLightGreen,
      ),
    );
  }
  @override
  void initState() {
    
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
    tabController?.addListener(() {
      setState(() {
        switch(tabController?.index){
          case 0:
          fabIcon = Icons.camera_alt;
          break;
          case 1:
          fabIcon = Icons.message;
          break;
          case 2:
          fabIcon = Icons.camera_alt;
          break;
          case 3:
          fabIcon = Icons.call;
          break;
          default:
        }
      });
    });
  }
}
