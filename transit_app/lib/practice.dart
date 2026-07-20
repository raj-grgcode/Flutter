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
        appBar: AppBar(title: const Text('Raj')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 300,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.directions_bus, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          "Passengers: 12",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Fare: Rs 25",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Image.network(
                      'https://loremflickr.com/200/200/bus',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        print('Elevated button pressed!');
                      },
                      child: const Text('Elevated Button'),
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        print('Text button pressed!');
                      },
                      child: const Text('Text Button'),
                    ),
                    const SizedBox(height: 16),
                    OutlinedButton(
                      onPressed: () {
                        print('Outlined button pressed!');
                      },
                      child: const Text('Outlined Button'),
                    ),
                    const SizedBox(height: 16),
                    IconButton(
                      onPressed: () {
                        print('Icon button pressed!');
                      },
                      icon: const Icon(Icons.star),
                    ),
                  ],
                ),
              ),
              // Bus stop list
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text("Ratnapark"),
                      subtitle: Text("ETA: 5 min"),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text("Sundhara"),
                      subtitle: Text("ETA: 10 min"),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text("Koteshwor"),
                      subtitle: Text("ETA: 18 min"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Bus grid
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                padding: const EdgeInsets.all(12),
                children: const [
                  Card(child: Center(child: Text("Bus 1"))),
                  Card(child: Center(child: Text("Bus 2"))),
                  Card(child: Center(child: Text("Bus 3"))),
                  Card(child: Center(child: Text("Bus 4"))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
