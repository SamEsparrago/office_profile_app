import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CareerOfficeProfile(),
    );
  }
}

class CareerOfficeProfile extends StatelessWidget {
  const CareerOfficeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BatStateU CareerConnect"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: Column(
        children: [
          //Office Profile Container
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.red.shade50,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Column(
              children: [
                Icon(Icons.business, size: 70, color: Colors.red),
                SizedBox(height: 10),
                Text(
                  "Career Development Office",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),

                Text(
                  "Helping students prepare for professional careers"
                  "through career guidance, internship assistance,"
                  "and employment opportunities.",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          //Services Container
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(horizontal: 15.0),

            decoration: BoxDecoration(
              color: Colors.red.shade200,
              borderRadius: BorderRadius.circular(15),
            ),

            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Services Offered",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text("• Internship Assistance"),
                Text("• Resume Review"),
                Text("• Mock Interviews"),
                Text("• Career Seminars"),
              ],
            ),
          ),

          const SizedBox(height: 20),

          //Row for Contact Information
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [Icon(Icons.email), Text("Email")]),

              Column(children: [Icon(Icons.phone), Text("Contact")]),

              Column(children: [Icon(Icons.location_on), Text("Office")]),
            ],
          ),
        ],
      ),
    );
  }
}
