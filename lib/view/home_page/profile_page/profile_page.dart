import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});

  @override 
  Widget build(context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: buildAppBar()),
    );
  }

  Widget buildAppBar(){
    return Container(
      color: Colors.grey.shade200,
      child: Column(
        children: [
          Container(
            height: 140,
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Flexible(
              fit: FlexFit.loose,
              flex: 11,
              child: Row(
                children: [
                  profilePictureWidget(),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        "erfkarimi",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                        
                      ),
                      viewPageButton()
                    ],
                  ),
                  //const SizedBox(width: 120),
                  Expanded(
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.menu),
                    ),
                  )
                ],
              ),
            ),
            ),
          
          supportSectionWidget()
        ],
      ),
    );
  }

  Widget profilePictureWidget(){
    return SizedBox(
      height: 80,
      width: 80,
      child: CircleAvatar(
        child: SizedBox(
          height: 150,
          width: 150,
          child: ClipOval(
            child: Image.asset(
              "assets/image/my-pic.jpg",
              fit: BoxFit.fill,
              )
            )
          ),
      ),
    );
  }


  Widget viewPageButton(){
    return MaterialButton(
      onPressed: (){},
      height: 30,
      color: Colors.grey.shade200,
      elevation: 0.0,
      child: const Text(
        "View page",
        ),
      );
  }

  Widget supportSectionWidget(){
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Container(
        height: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  const Column(
                    children: [
                      Text(
                        "0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 50),
                  verticalDivider(),
                  const SizedBox(width: 20),
                   const Column(
                    children: [
                      Text(
                        "0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      Text(
                        "Supporters",
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 50),
                  verticalDivider(),
                  const SizedBox(width: 20),
                  const Column(
                    children: [
                      Text(
                        "0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      Text(
                        "Members",
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            viewAllStatsbutton()
          ],
        ),
      ),
    );
  }


  Widget viewAllStatsbutton(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: MaterialButton(
        onPressed: (){},
        color: Colors.grey.shade200,
        elevation: 0.0,
        child: const ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.data_exploration_outlined,
              color: Colors.black,
              ),
          ),
            title: Text(
              "View all stats",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "You earned \$0.00 in the last 30 days"
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 20,),
        ),
      ),
    );
  }

  Widget verticalDivider(){
    return Container(
      height: 40,
      width: 2,
      color: Colors.grey.shade200,
    );
  }
}