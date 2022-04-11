import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final url =
        "data:image/jpeg;base64,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";
    return Drawer(
      child: ListView(
        children: [
          // padding: EdgeInsets.zero,
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(url),
                  ),
                  accountName: Text(
                    "Lokesh Rahul",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: Text(
                    "lokesh.rahul2010@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ))),
          ListTile(
            minVerticalPadding: 10,
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.deepPurple,
            ),
            title: Text(
              "Home",
              textScaleFactor: 2,
              style: TextStyle(
                color: Colors.deepPurple,
              ),
            ),
          ),
          ListTile(
            minVerticalPadding: 10,
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.deepPurple,
            ),
            title: Text(
              "About",
              textScaleFactor: 2,
              style: TextStyle(
                color: Colors.deepPurple,
              ),
            ),
          ),
          ListTile(
            minVerticalPadding: 10,
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.deepPurple,
            ),
            title: Text(
              "Mail me",
              textScaleFactor: 2,
              style: TextStyle(
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
