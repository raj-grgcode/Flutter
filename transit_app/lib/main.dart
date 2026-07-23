import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nepal Transit'),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner image
              Image.network(
                'https://loremflickr.com/400/180/bus',
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),

              // Section title
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Nearby Stops",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              // Bus stop list
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const ListTile(
                      leading: Icon(Icons.location_on, color: Colors.green),
                      title: Text("Ratnapark"),
                      subtitle: Text("ETA: 5 min"),
                      trailing: Icon(Icons.directions_bus),
                    ),
                  ),
                  Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const ListTile(
                      leading: Icon(Icons.location_on, color: Colors.green),
                      title: Text("Sundhara"),
                      subtitle: Text("ETA: 10 min"),
                      trailing: Icon(Icons.directions_bus),
                    ),
                  ),
                  Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const ListTile(
                      leading: Icon(Icons.location_on, color: Colors.green),
                      title: Text("Koteshwor"),
                      subtitle: Text("ETA: 18 min"),
                      trailing: Icon(Icons.directions_bus),
                    ),
                  ),
                ],
              ),

              // Section title
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Quick Actions",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              // Mode toggle buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        print('Passenger mode selected');
                      },
                      icon: const Icon(Icons.person),
                      label: const Text("Passenger"),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        print('Driver mode selected');
                      },
                      icon: const Icon(Icons.directions_bus),
                      label: const Text("Driver"),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}