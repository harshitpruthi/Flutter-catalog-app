import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String imageUrl =
        "https://lh3.googleusercontent.com/ogw/ADea4I7No4CFNJ80zg0TxC_9OKTKa-MeO0U8WmAadTpN2A=s64-c-mo";

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountEmail: Text("harshitpruthi23@gmail.com"),
                accountName: Text("harshit Pruthi"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              // color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              // color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              // color: Colors.white,
            ),
            title: Text(
              "Email",
              textScaleFactor: 1.2,
            ),
          )
        ],
      ),
    );
  }
}
