import 'package:bmac/view/home_page/home/home.dart';
import 'package:bmac/view/home_page/my_posts/my_posts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override 
  Widget build(context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: buildBody()
      ),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: const TabBar(
        isScrollable: true,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        indicatorColor: Color(0xffFFDD00),
        indicatorWeight: 3.0,
        tabs: [
          Tab(
            text: "Home",
          ),
          Tab(
            text: "My posts",
          )
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(6),
          child: ElevatedButton(
            onPressed: (){
              searchBottomSheet();
            },
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              backgroundColor: Colors.grey.shade200,
              shape: const CircleBorder()
            ),
            child: Icon(
              Icons.search,
              color: Colors.grey.shade600,
              )
            ),
        )
      ],
    );
  }

  Widget buildBody(){
    return const TabBarView(
      children: [
        Home(),
        MyPosts()
      ],
    );
  }

  void searchBottomSheet(){
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context){
        return Container(
          color: Colors.grey.shade300,
          height: 800,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      cursorColor: Colors.grey,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade800
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        
                        contentPadding: const EdgeInsets.all(10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey)
                        ),
                        prefixIcon: const Icon(Icons.search, color: Colors.grey,),
                        hintText: "Search creators...",
                        hintStyle: const TextStyle(
                          fontSize: 20
                        )
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                      )
                    )
                ],
              ),
            ),
          )
        );
      }
      );
  }
}