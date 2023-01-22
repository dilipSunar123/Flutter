import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'data:image/jpeg;base64,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';

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text('Dilip Sunar'),
              accountEmail: Text('dilipksunar37010@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            )
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home
            ),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled
            ),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail
            ),
            title: Text('Email'),
          ),
        ],
      ),
    );
  }
}