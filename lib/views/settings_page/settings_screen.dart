import 'package:auction_app/navigation/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 60,
                child: Icon(Icons.person),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Aman the baiter',
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'aman69@gmail.com',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Account settings",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                elevation: 0,
                child: ListTile(
                  title: Text(
                    "Change account information",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.9),
                      fontSize: 13,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 13,
                    color: Color(0xff636AB1),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                elevation: 0,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.9),
                          fontSize: 13,
                        ),
                      ),
                      const Text(
                        "English",
                        style: TextStyle(
                          color: Color(0xff636AB1),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                    color: Color(0xff636AB1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Other settings",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                elevation: 0,
                child: ListTile(
                  title: Text(
                    "Support",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.9),
                      fontSize: 13,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 13,
                    color: Color(0xff636AB1),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                elevation: 0,
                child: ListTile(
                  title: Text(
                    "Frequently asked questions",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.9),
                      fontSize: 13,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 13,
                    color: Color(0xff636AB1),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                elevation: 0,
                child: ListTile(
                  title: Text(
                    "Privacy policy and terms of service",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.9),
                      fontSize: 13,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 13,
                    color: Color(0xff636AB1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
