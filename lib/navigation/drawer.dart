import 'package:auction_app/blocs/auth_bloc/auth_bloc.dart';
import 'package:auction_app/views/saved_tenders/saved_tenders_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../views/home_page/home_screen.dart';
import '../views/settings_page/settings_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(0), bottomRight: Radius.circular(0)),
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          const UserAccountsDrawerHeader(
              accountName: Text("Aman the baiter"),
              accountEmail: Text('eyosi69@gmail.com')),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            leading: const Icon(Icons.home),
            title: const Text('Home'),
          ),
          const Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SavedTendersScreen()));
            },
            leading: const Icon(Icons.save_outlined),
            title: const Text('Saved Tenders'),
          ),
          const Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
            },
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
          ),
          const Divider(),
          ListTile(
            onTap: () {
              context.read<AuthBloc>().add(AuthLogOutRequested());
            },
            leading: const Icon(Icons.logout_outlined),
            title: const Text('Logout'),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
