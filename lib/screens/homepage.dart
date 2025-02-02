import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:plugify/screens/login_screen.dart';
import 'package:plugify/screens/view_ticket.dart';
import 'package:plugify/widgets/buy_ticket_button.dart';
import 'package:plugify/widgets/events_card.dart';
import 'package:plugify/widgets/side_drawer_list_tile.dart';
import 'package:plugify/widgets/trending_events.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() {
    return _HomepageState();
  }
}

class _HomepageState extends State<Homepage> {
  final List<Map<String, String>> events = [
    {'image': 'assets/images/image1.png', 'title': 'Dance Party'},
    {'image': 'assets/images/image2.png', 'title': 'Love Boulevard'},
    {'image': 'assets/images/image3.png', 'title': 'Owl Fest'},
    {'image': 'assets/images/image4.png', 'title': 'Prime Suspect'},
    {'image': 'assets/images/image5.png', 'title': 'Heat Wave'},
  ];
 int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
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
              child: Image.asset(
                'assets/images/Group_dark.png',
                width: 150,
              ),
            ),
            SideDrawerListTile(title: 'Home', icon: Icons.home, onTap: () {}),
            SideDrawerListTile(
                title: 'Events', icon: Icons.event_note_outlined, onTap: () {}),
            SideDrawerListTile(
                title: 'Community', icon: Icons.group, onTap: () {}),
            SideDrawerListTile(
                title: 'Tickets', icon: Icons.topic, onTap: () {}),
            SideDrawerListTile(
                title: 'Profile', icon: Icons.person_2_outlined, onTap: () {}),
            SideDrawerListTile(
                title: 'Notifications',
                icon: Icons.notifications,
                onTap: () {}),
            SideDrawerListTile(
                title: 'Contact Us', icon: Icons.book, onTap: () {}),
            SideDrawerListTile(
                title: 'Support', icon: Icons.call, onTap: () {}),
            SideDrawerListTile(
                title: 'Settings', icon: Icons.settings, onTap: () {}),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.logout),
                  const SizedBox(width: 10),
                  Text(
                    'Logout',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
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
            icon: const Icon(Icons.notifications_none_outlined),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          SearchBar(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            hintText: 'Search for an event',
            leading: const Icon(Icons.search),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 22),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 35,
                  color: Colors.green,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Event Stories',
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150, // Define height
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: events.length,
              itemBuilder: (context, index) {
                final event = events[index];
                return GestureDetector(
                  onTap: () {
                    // Add your logic here when an event is clicked.
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(event['title']!),
                        content: const Text("You clicked on this event."),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Close"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7), // Add spacing
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40, // Adjust size
                          backgroundImage:
                              AssetImage(event['image']!), // Circular images
                        ),
                        const SizedBox(height: 5),
                        Text(
                          event['title']!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 10),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 35,
                  color: Colors.green,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Biggest Events',
                    style: GoogleFonts.montserrat(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            'assets/images/olamide.png',
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'FLYTIME FEST 2024',
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: [
              const Icon(Icons.event_note_outlined),
              const SizedBox(width: 10),
              Text(
                'December 23 2024 10:00',
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                const Icon(Icons.location_on_outlined),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Eko Convention Center, Victoria Island, Lagos',
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
           Padding(
              padding:const EdgeInsets.only(left: 20, right: 20),
              child: BuyTicketButton(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ViewTicket(
                        about: 'Established in 2004, we are proud to be dedicated curators of premium African entertainment experiences. As curators of the largest music concerts in Nigeria, over 300 African Artists have graced Flytime stages. Flytime Fest has created bridges between art and entertainment from Nigeria to the World.',
                        date:'December 23 2024 10:00 PM', 
                        image: 'assets/images/olamide.png', 
                        location: 'Eko Convention Center, Victoria Island, Lagos', 
                       event: 'FLYTIME FEST 2024',
                        title: 'Flytime Fest 2024',
                      )));
                },

              )),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.grey, // Color of the divider
            thickness: 1, // Thickness of the divider
            indent: 20, // Left padding
            endIndent: 20, // Right padding
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 35,
                  color: Colors.green,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Today's Event",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(width: 50),
                Expanded(
                  child: Text(
                    'Saturday April 20th',
                    style: GoogleFonts.montserrat(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const EventCard(
              image: 'assets/images/summer.png',
              title: 'TROPICAL SUMMER PARTY',
              date: 'April 20, 2024  6:00PM',
              location:
                  'Muri Okunola Park, Adeyemo Alakija Street, Lagos, Nigeria, Eti Osa, Lagos',
              price: '30,000',
              eventType: 'Concert'),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.grey, // Color of the divider
            thickness: 1, // Thickness of the divider
            indent: 20, // Left padding
            endIndent: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 35,
                  color: Colors.green,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Trending Events",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(width: 50),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Add your logic here when the view all button is clicked.
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('View All'),
                          content:
                              const Text("You clicked on the view all button."),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Close"),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Text(
                        'View All',
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: TrendingEvents(
                image: 'assets/images/girls.png',
                title: 'FRIDAY GIRLS NIGHT OUT',
                date: 'Oct 6, 2024  6:00PM',
                location: 'Lagos',
                attending: '5,607',
                eventType: 'HANGOUT'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: TrendingEvents(
              image: 'assets/images/bold.png',
              title: 'STAY BOLD',
              date: 'Nov 11, 2024  6:00PM',
              location: 'Abija',
              attending: '300',
              eventType: 'OUTREACH',
              categoryColor: Color.fromRGBO(243, 171, 37, 1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: TrendingEvents(
              image: 'assets/images/turnfest.png',
              title: 'THE TURN FEST',
              date: 'Nov 12, 2024  5:00PM',
              location: 'Ibadan',
              attending: '1,627',
              eventType: 'FESTIVAL',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: TrendingEvents(
              image: 'assets/images/rave.png',
              title: 'RAVE: THE PARTY',
              date: 'Nov 21, 2024  11:00PM',
              location: 'Enugu',
              attending: '1,627',
              eventType: 'RAVE',
              categoryColor: Color.fromRGBO(38, 211, 103, 1),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text.rich(
              TextSpan(
                text: 'GET ', // Default text
                style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
                children: [
                  TextSpan(
                    text: 'PLUGGED', // Text with a different color
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: const Color.fromRGBO(38, 211, 103, 1),
                        fontWeight: FontWeight.w900),
                  ),
                  const TextSpan(
                    text:
                        ' TO THE HOTTEST EVENT HAPPENING AROUND YOU', // Continuing with default style
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Align(
              alignment: Alignment.center,
              child: Text(
                'Plugify.Ng helps connect you to the latest and \n                upcoming events in town',
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w500),
              )),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/Bitmoji.png',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note_outlined),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.topic),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}