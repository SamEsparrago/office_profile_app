import 'package:flutter/material.dart';
import 'registration_page.dart';

class CareerOfficeProfile extends StatefulWidget {
  const CareerOfficeProfile({super.key});

  @override
  State<CareerOfficeProfile> createState() => _CareerOfficeProfileState();
}

class _CareerOfficeProfileState extends State<CareerOfficeProfile> {
  double iconSize = 70;
  Color iconColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BatStateU CareerConnect"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Office Profile Container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        iconSize = (iconSize == 70) ? 110 : 70;
                      });

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Welcome to the Career Development Office!",
                          ),
                        ),
                      );
                    },

                    onDoubleTap: () {
                      setState(() {
                        iconColor = (iconColor == Colors.red)
                            ? Colors.blue
                            : Colors.red;
                      });
                    },

                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Career Development Office"),
                            content: const Text(
                              "Office Hours:\n"
                              "Monday - Friday\n"
                              "8:00 AM - 5:00 PM\n\n"
                              "Services:\n"
                              "• Internship Assistance\n"
                              "• Resume Review\n"
                              "• Mock Interviews\n"
                              "• Career Seminars",
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Close"),
                              ),
                            ],
                          );
                        },
                      );
                    },

                    child: Icon(
                      Icons.business,
                      size: iconSize,
                      color: iconColor,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Career Development Office",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Helping students prepare for professional careers "
                    "through career guidance, internship assistance, "
                    "and employment opportunities.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Services Container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Services Offered:",
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

            // Contact Row
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [Icon(Icons.email), Text("Email")]),
                Column(children: [Icon(Icons.phone), Text("Contact")]),
                Column(children: [Icon(Icons.location_on), Text("Office")]),
              ],
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegistrationPage(),
                  ),
                );
              },
              child: const Text(
                "Register Now",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
