import 'package:flutter/material.dart';

class MyPosts extends StatefulWidget{
  const MyPosts({super.key});

  @override
  State<MyPosts> createState() => _MyPostsState();
}

class _MyPostsState extends State<MyPosts> with SingleTickerProviderStateMixin{

  TabController? _tabController;

  @override 
  void initState(){
    _tabController = TabController(
      length: 3, vsync: this);
    super.initState();
  }
  @override 
  Widget build(context){
    return Container(
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    writeAPostWidget(),
                    addAnAlbumWidget(),
                  ],
                ),
              ),
              
              tabBarWidget(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget writeAPostWidget(){
    return Container(
      height: 100,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10)
      ),
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.notes_outlined, size: 30),
            SizedBox(height: 10),
            Text(
              "Write a post",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget addAnAlbumWidget(){
    return Container(
      height: 100,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10)
      ),
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.photo_outlined, size: 30,),
            SizedBox(height: 10),
            Text(
              "Add an album",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget tabBarWidget(BuildContext context){
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: TabBar(
            isScrollable: true,
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            indicatorColor: const Color(0xffFFDD00),
            tabs: const [
              Tab(
                text: "All posts",
              ),
              Tab(
                text: "Drafts",
              ),
              Tab(
                text: "Scheduled",
              )
            ],
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        Container(
          height: 500,
          color: Colors.white,
          child: TabBarView(
            controller: _tabController,
            children: const [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "You don't have any posts yet",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Start creating and fill this space up",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16
                        ),
                      )
                  ],
                )),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "You don't have any drafted posts yet",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Start creating and fill this space up",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16
                        ),
                      )
                  ],
                )),
                Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "You don't have any scheduled posts yet",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Start creating and fill this space up",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16
                        ),
                      )
                  ],
                )),
            ],
          ),
        )
      ],
    );
  }
}