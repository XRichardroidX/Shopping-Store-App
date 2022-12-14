import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:devigma_store/main.dart';
import 'package:devigma_store/users/screens/help/user_help.dart';
import 'package:devigma_store/users/screens/home/user_home.dart';
import 'package:devigma_store/users/screens/profile/user_profile.dart';
import 'package:devigma_store/users/screens/shop/main_store.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
import '../admin/main_admin.dart';

class MainUsers extends StatefulWidget {
  const MainUsers({Key? key}) : super(key: key);

  @override
  State<MainUsers> createState() => _MainUsersState();
}

class _MainUsersState extends State<MainUsers> {
  final Screens = [
    UserHomeScreen(),
    MainStore(),
    UserProfile(),
    UserHelp(),
  ];

  int page = 0;
  void button (int index){
    setState(() {
      page = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuBar(),
      appBar: AppBar(
        title: Center(child: Text("Devigma's Mall Center", style: GoogleFonts.nunito(fontWeight: FontWeight.bold),)),
      //  backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      body: Screens[page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.green,
        backgroundColor: Colors.white,
        onTap: button,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.shop,), label: 'Shop',),
          BottomNavigationBarItem(icon: Icon(Icons.person,), label: 'Profile',),
          BottomNavigationBarItem(icon: Icon(Icons.help,), label: 'Help',)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.admin_panel_settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainAdmins()),
            );
          }
      ),
    );
  }
}


class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: ImageSlideshow(
              width: MediaQuery.of(context).size.width,
              // height: 200,
              initialPage: 0,
              indicatorColor: Colors.blue,
              indicatorBackgroundColor: Colors.grey,
              onPageChanged: (value) {
                debugPrint('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                Image.asset(
                  "images/1stBanner.jpg",
                ),
                Image.asset(
                  "images/2ndBanner.png",
                ),
                Image.asset(
                  "images/3rdBanner.png",
                ),
                Image.asset(
                  "images/4thBanner.png",
                ),
                Image.asset(
                  "images/5thBanner.png",
                ),
                Image.asset(
                  "images/6thBanner.png",
                ),
                Image.asset(
                  "images/7thBanner.png",
                ),
                Image.asset(
                  "images/8thBanner.png",
                ),
              ],
            ),
            // decoration: BoxDecoration(
            //     color: Colors.green,
            //     image: DecorationImage(
            //         fit: BoxFit.fill,
            //         image: AssetImage("images/.png")
            //     )
            // ),
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text("Profile"),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),
            onTap: (){
              FirebaseAuth.instance.signOut().then((value) => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MyApp()),(route) => false));
            },
          ),
        ],
      ),

    );
  }
}
