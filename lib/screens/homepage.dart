import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:plugify/widgets/side_drawer_list_tile.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() {
    return _HomepageState();
  }
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
         DrawerHeader(      
              child: Image.asset('assets/images/Group_dark.png', width: 150,),
            ),
            SideDrawerListTile(title: 'Home', icon:  Icons.home, onTap: (){
            
            }
            ),
            SideDrawerListTile(title: 'Events', icon: Icons.event_note_outlined , onTap: (){
            
            }
            ),
            SideDrawerListTile(title: 'Community', icon: Icons.group, onTap: (){
            
            }
            ),
            SideDrawerListTile(title: 'Tickets', icon: Icons.topic, onTap: (){
            
            }
            ),
            SideDrawerListTile(title: 'Profile', icon: Icons.person_2_outlined, onTap: (){
            
            }
            ),
            SideDrawerListTile(title: 'Notifications', icon: Icons.notifications, onTap: (){
            
            }
            ),
            SideDrawerListTile(title: 'Contact Us', icon: Icons.book, onTap: (){
            
            }
            ),
              SideDrawerListTile(title: 'Support', icon:  Icons.call, onTap: (){
            
            }
            ),
              SideDrawerListTile(title: 'Settings', icon:  Icons.settings, onTap: (){
            
            }
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const  Icon(Icons.logout),
               const SizedBox(width: 10),
                Text('Logout', style: GoogleFonts.montserrat(
                  fontSize: 16,
                 
                ) ,),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Image.asset(
          'assets/images/Group_dark.png',
          width: 110,
        )),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Works now!
            },
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
