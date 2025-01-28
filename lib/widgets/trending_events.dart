import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingEvents extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  final String location;
  final String attending;
  final String eventType;
  final Color categoryColor;

  const TrendingEvents(
      {super.key,
      required this.image,
      required this.title,
      required this.date,
      required this.location,
      required this.attending,
      required this.eventType,
      this.categoryColor  = const Color.fromRGBO(0, 42, 20, 1)
      });

  @override
  Widget build(BuildContext context) {
return  Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
  
  elevation: 4,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        child: Image.asset(
          image,
          width: double.infinity,
          height: 160,
          fit: BoxFit.cover,
        ),
      ),
       Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.event, size: 16, color: Colors.grey),
                    const SizedBox(width: 6),
                    Text(
                      date,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 16, color: Colors.grey),
                    const SizedBox(width: 6),
                    Text(
                      location,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.people, size: 16, color: Colors.grey),
                    const SizedBox(width: 6),
                    Text(
                      "$attending Attending",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: categoryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        eventType,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
    ],
  ),
);

  }
}
