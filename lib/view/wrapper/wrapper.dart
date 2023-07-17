import 'package:bmac/view/home_page/message_page/message_page.dart';
import 'package:bmac/view/home_page/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icon.dart';
import '../home_page/home_Page.dart';

class Wrapper extends StatefulWidget{
  const Wrapper({super.key});

  @override 
  WrapperState createState()=> WrapperState();
}

class WrapperState extends State<Wrapper>{
  int _selectedIndex = 0;
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> widgetList = const [
    HomePage(),
    MessagePage(),
    ProfilePage()
  ];

  @override 
  Widget build(context){
    setTheme();
    return Scaffold(
      bottomNavigationBar: bottomNavigation(),
      body: buildBody()
    );
  }

  Widget bottomNavigation(){
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0.0,
      backgroundColor: Colors.white,
      items: [
        const BottomNavigationBarItem(
          icon: LineIcon.home(size: 30),
          activeIcon: LineIcon.home(size: 30),
          label: ""
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.mail_outline, size: 30),
          activeIcon: Icon(Icons.mail_outline, size: 30,),
          label: ""
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 30,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade300,
            ),
            child: Image.asset("assets/image/my-pic.jpg"),
          ),
          activeIcon: Container(
            height: 30,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade300,
              border: Border.all(width: 2)
            ),
            child: Image.asset("assets/image/my-pic.jpg"),
          ),
          label: ""
        )
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }

  Widget buildBody(){
    return widgetList[_selectedIndex];
  }

  void setTheme(){
   SystemChrome.setSystemUIOverlayStyle(
       const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ));
  }
}