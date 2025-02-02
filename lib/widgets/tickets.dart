import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketSection extends StatelessWidget {
  final List<Map<String, dynamic>> tickets = [
    {
      'title': 'EARLY BIRD',
      'description': 'Why wait till the last minute to cop the tickets, when you can',
      'price': 'NGN 15,000',
      'color': Colors.lightGreen,
      'borderColor': Colors.blue
    },
    {'title': 'Regular', 'price': '', 'color': Colors.lime, 'borderColor': Colors.transparent},
    {'title': 'VIP', 'price': '', 'color': Colors.orange, 'borderColor': Colors.transparent},
    {'title': 'Table for Five', 'price': '', 'color': Colors.green.shade900, 'borderColor': Colors.transparent},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(width: 8, height: 25, color: Colors.green),
              const SizedBox(width: 5),
              Text(
                'Tickets',
                style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: tickets.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 columns
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.3, // Adjust for shape
            ),
            itemBuilder: (context, index) {
              final ticket = tickets[index];
              return _buildTicketCard(
                title: ticket['title'],
                description: ticket['description'] ?? '',
                price: ticket['price'],
                color: ticket['color'],
                borderColor: ticket['borderColor'],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTicketCard({
    required String title,
    String? description,
    required String price,
    required Color color,
    required Color borderColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          if (description != null && description.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black87),
            ),
          ],
          if (price.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              price,
              style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ],
      ),
    );
  }
}
