import 'package:flutter/material.dart';

class GridViewExamplePage extends StatelessWidget {
  const GridViewExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> gridItems = [
      {'title': 'Pantai', 'icon': Icons.umbrella, 'color': Colors.red[900]},
      {'title': 'Gunung', 'icon': Icons.terrain, 'color': Colors.limeAccent},
      {'title': 'Budaya', 'icon': Icons.museum, 'color': Colors.pink[400]},
      {
        'title': 'Kuliner',
        'icon': Icons.restaurant,
        'color': Colors.greenAccent[400],
      },
      {
        'title': 'sport',
        'icon': Icons.sports_soccer,
        'color': Colors.blue[400],
      },
      {
        'title': 'travel',
        'icon': Icons.public,
        'color': Colors.tealAccent[400],
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Beranda Jopan",
          style: TextStyle(color: Colors.black87),
        ),
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: gridItems.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: gridItems[index]['color'],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    gridItems[index]['icon'],
                    color: Colors.deepPurple[900],
                    size: 30,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    gridItems[index]['title'],
                    style: TextStyle(
                      color: Colors.deepPurple[900],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
