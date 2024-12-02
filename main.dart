import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan debug banner
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rendang'),
          backgroundColor: Colors.redAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left Column
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rendang khas padang',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Rendang adalah kuliner asli asal Minangkabau, Sumatra Barat. Orang Minang menyebut kuliner ini dengan nama "randang". Asal katanya dari marandang, yang berarti memasak santan hingga kering secara perlahan. Rendang perlu dimasak lama hingga kuahnya kering.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.red),
                        Icon(Icons.star, color: Colors.red),
                        Icon(Icons.star, color: Colors.red),
                        Icon(Icons.star, color: Colors.red),
                        Icon(Icons.star_border, color: Colors.grey),
                        SizedBox(width: 8),
                        Text(
                          '170 Reviews',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildInfoColumn(Icons.timer, 'Prep:', '25 min'),
                        buildInfoColumn(Icons.timer_outlined, 'Cook:', '1 hr'),
                        buildInfoColumn(Icons.restaurant, 'Feeds:', '4-6'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16),
              // Right Image
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/gambar_rendang.jpg', // Pastikan gambar tersedia
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoColumn(IconData icon, String title, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.green, size: 28),
        SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}