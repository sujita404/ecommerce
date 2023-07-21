import 'package:ecomerce/view/screens/login.dart';
import 'package:ecomerce/view/screens/notifications.dart';

import 'package:ecomerce/view/utils/medias.dart';
import 'package:ecomerce/view/utils/text.dart';
import 'package:flutter/material.dart';

import '../../service/routes.dart';

class CustomWidgets {
  static AppBar customAppBar(
      {required BuildContext context, bool? showNoti, showBack}) {
    return AppBar(
      title: Text(appName),
      elevation: 0,
      centerTitle: true,
      leading: (showBack == true)
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios))
          : null,
      actions: [
        (showNoti == false)
            ? SizedBox.shrink()
            : IconButton(
                onPressed: () {
                  navigate(context, NotificationScreen());
                },
                icon: Icon(Icons.notifications))
      ],
    );
  }

  static Widget customDrawer(context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(logoUrl), fit: BoxFit.fitWidth)),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.dashboard),
            onTap: () {},
            title: Text('Dashboard'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.chat_bubble),
            title: Text('About Us'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.privacy_tip_sharp),
            title: Text('Privacy'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('LogOut'),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text("Do you really want to log out ?"),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            navigate(context, LogInScreen());
                          },
                          child: Text("Yes"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("No"),
                        )
                      ],
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
