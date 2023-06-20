import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/profil_page.dart';
import 'package:flutter_application_1/pages/search_page.dart';
import '../story_widget.dart';
import '../post_widget.dart';
import 'addpost_page.dart';
import 'notification_screen.dart';
class InstaPage extends StatelessWidget {
 InstaPage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }
    @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Instagram',
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        appBar: AppBar( 
          title: const Image(
            
            image: AssetImage('assets/images/instagram-logo.png'),
            height:190,
            ), centerTitle: true,
  backgroundColor: Colors.white,
  elevation: 0,
  leading: IconButton(
    icon: const Icon(
      Icons.camera_alt_outlined,
      color: Colors.black,
    ),
    onPressed: () {},
  ),
   actions: [
            IconButton(
              onPressed: signUserOut,
                    color: Colors.black,

              icon: Icon(Icons.logout),
            ),
          ],
  
  
),
body: SingleChildScrollView(child: Column(children: [ StoryWidget(username: null,),
PostWidget(),


  ])
),bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  showSelectedLabels: false,
  showUnselectedLabels: false,
  unselectedItemColor: Colors.grey.shade700,
  selectedItemColor: Colors.black,
  items: const [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home_outlined,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.search,
      ),

      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.camera_alt_outlined,
      ),
      label: 'Add Photo',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.favorite_border,
      ),
      label: 'Favorite',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.person_outline,
      ),
      label: 'Profil',
    ),
  ],
  
onTap: (index) {
            if (index == 4) {
              // Check if the profile button is pressed (index 4)
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(), // Navigate to your profile page
                ),
              );
            }
        
          else if (index == 1) {
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen(), 
                  ),
              );
            }
            else if (index == 3) {
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificaionScreen(), 
                  ),
              );
            }
            else if (index == 2) {
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddPostScreen(), 
                  ),
              );
            }
},
        ),
      ),
    );
  }
}