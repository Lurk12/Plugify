import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewTicket extends StatelessWidget {
  const ViewTicket({
    super.key,
    this.image,
    this.title,
    this.date,
    this.location,
    this.about,
    this.ticket,
    this.images,
    this.event,
  });

  final String? event;
  final String? image;
  final String? title;
  final String? date;
  final String? location;
  final String? about;
  final String? ticket;
  final String? images;

  final List<Map<String, dynamic>> tickets = const [
    {
      'title': 'EARLY BIRD',
      'description': 'Why wait till the last minute to cop the tickets, when you can',
      'price': 'NGN 15,000',
      'color': Colors.lightGreen,
      'borderColor': Colors.blue
    },
    {'title': 'Regular', 'price': '', 'color': Colors.lime, 'borderColor': Colors.transparent},
    {'title': 'VIP', 'price': '', 'color': Colors.orange, 'borderColor': Colors.transparent},
    {'title': 'Table for Five', 'price': '', 'color': Colors.green, 'borderColor': Colors.transparent},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset(
            'assets/images/Group_dark.png',
            width: 110,
          ),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          _buildTitleSection(title),
          const SizedBox(height: 5),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image ?? 'assets/images/placeholder.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          _buildEventDetails(),
          const Divider(color: Color.fromARGB(255, 233, 230, 230), thickness: 1),
          const SizedBox(height: 10),
          _buildAboutSection(title, about),
           const Divider(color: Color.fromARGB(255, 233, 230, 230), thickness: 1),
          const SizedBox(height: 10),
          _buildTicketGrid(),
          const SizedBox(height: 10),
          // _buildImagesSection(images),
        ],
      ),
    );
  }

  Widget _buildTitleSection(String? text) {
    return Row(
      children: [
        Container(width: 8, height: 35, color: Colors.green),
        const SizedBox(width: 5),
        Expanded(
          child: Text(
            text ?? 'Event Title',
            style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }

  Widget _buildEventDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          event ?? 'Event Name',
          style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(Icons.calendar_today, size: 18, color: Color.fromRGBO(13, 103, 55, 1)),
            const SizedBox(width: 5),
            Text(date ?? 'No Date', style: GoogleFonts.montserrat(fontSize: 13, fontWeight: FontWeight.w500)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(Icons.location_on, size: 18, color: Color.fromRGBO(13, 103, 55, 1)),
            const SizedBox(width: 5),
            Text(location ?? 'No Location', style: GoogleFonts.montserrat(fontSize: 13, fontWeight: FontWeight.w500)),
          ],
        ),
      ],
    );
  }

  Widget _buildAboutSection(String? title, String? about) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitleSection('About ${title ?? 'this event'}'),
        const SizedBox(height: 10),
        Text(
          about ?? 'No details available.',
          style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget _buildTicketGrid() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitleSection('Tickets'),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: tickets.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.3,
          ),
          itemBuilder: (context, index) {
            final ticket = tickets[index];
            return _buildTicketCard(ticket);
          },
        ),
      ],
    );
  }

  Widget _buildTicketCard(Map<String, dynamic> ticket) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ticket['color'],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ticket['borderColor'], width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ticket['title'],
            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          if (ticket['description'] != null && ticket['description'].isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              ticket['description'],
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black87),
            ),
          ],
          if (ticket['price'].isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              ticket['price'],
              style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ],
      ),
    );
  }
}
