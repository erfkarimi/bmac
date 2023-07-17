import 'package:bmac/view/home_page/message_page/all_page/all_page.dart';
import 'package:bmac/view/home_page/message_page/unread_page/unread_page.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget{
  const MessagePage({super.key});

  @override 
  Widget build(context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: buildBody()
      ),
    );
  }

  AppBar buildAppBar(context){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: const TabBar(
        isScrollable: true,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        tabs: [
          Tab(
            text: "All",
          ),
          Tab(
            text: "Unread",
          )
        ],
      ),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(4.0),
        child: Divider(
          thickness: 1.0,
        ),
      ),
      actions: [
        IconButton(
          onPressed: (){
            showMoreBottomSheet(context);
          },
          icon: const Icon(Icons.add, color: Colors.grey,),
        )
      ],
    );
  }

  Widget buildBody(){
    return const TabBarView(
      children: [
        AllPage(),
        UnreadPage()
      ]
      );
  }

  void showMoreBottomSheet(context){
    showModalBottomSheet(
      context: context,
      builder: (context){
        return const SizedBox(
          height: 400,
          child: Column(
            children: [
              
            ],
          ),
        );
      } 
      );
  }
}