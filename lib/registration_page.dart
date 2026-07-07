import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  String? selectedProgram;
  String yearLevel = "";

  bool software = false;
  bool networking = false;
  bool cybersecurity = false;
  bool uiux = false;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController studentNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Career Registration"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const Text(
                "Student Career Profile",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // Full Name
              TextFormField(
                controller: nameController,

                decoration: const InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your name";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 15),

              // Student Number
              TextFormField(
                controller: studentNumberController,

                decoration: const InputDecoration(
                  labelText: "Student Number",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.badge),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter student number";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 15),

              // Email
              TextFormField(
                controller: emailController,

                decoration: const InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),

                validator: (value) {
                  if (value == null || !value.contains("@")) {
                    return "Enter a valid email";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              // Program Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: "Program",
                  border: OutlineInputBorder(),
                ),

                items:
                    [
                      "BS Information Technology",
                      "BS Computer Science",
                      "BS Engineering",
                      "BS Business Administration",
                    ].map((program) {
                      return DropdownMenuItem(
                        value: program,

                        child: Text(program),
                      );
                    }).toList(),

                onChanged: (value) {
                  setState(() {
                    selectedProgram = value;
                  });
                },

                validator: (value) {
                  if (value == null) {
                    return "Select your program";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              const Text(
                "Year Level",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              RadioListTile(
                title: const Text("1st Year"),
                value: "1st Year",
                groupValue: yearLevel,

                onChanged: (value) {
                  setState(() {
                    yearLevel = value.toString();
                  });
                },
              ),

              RadioListTile(
                title: const Text("2nd Year"),
                value: "2nd Year",
                groupValue: yearLevel,

                onChanged: (value) {
                  setState(() {
                    yearLevel = value.toString();
                  });
                },
              ),

              RadioListTile(
                title: const Text("3rd Year"),
                value: "3rd Year",
                groupValue: yearLevel,

                onChanged: (value) {
                  setState(() {
                    yearLevel = value.toString();
                  });
                },
              ),

              const SizedBox(height: 10),

              const Text(
                "Career Interests",

                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              CheckboxListTile(
                title: const Text("Software Development"),

                value: software,

                onChanged: (value) {
                  setState(() {
                    software = value!;
                  });
                },
              ),

              CheckboxListTile(
                title: const Text("Networking"),

                value: networking,

                onChanged: (value) {
                  setState(() {
                    networking = value!;
                  });
                },
              ),

              CheckboxListTile(
                title: const Text("Cybersecurity"),

                value: cybersecurity,

                onChanged: (value) {
                  setState(() {
                    cybersecurity = value!;
                  });
                },
              ),

              CheckboxListTile(
                title: const Text("UI/UX Design"),

                value: uiux,

                onChanged: (value) {
                  setState(() {
                    uiux = value!;
                  });
                },
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,

                    padding: const EdgeInsets.all(15),
                  ),

                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Career Registration Successful!"),
                        ),
                      );
                    }
                  },

                  child: const Text(
                    "REGISTER",

                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
