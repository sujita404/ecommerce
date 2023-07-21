import 'package:ecomerce/view/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

import '../../service/routes.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppBar(
          context: context, showBack: true, showNoti: false),
      body: ListView.builder(
        itemCount: 100,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.notifications),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Notifications Title'),
                        content: Text("This is body of notifiucations"),
                        actions: [
                          ElevatedButton(
                              onPressed: () => back(context),
                              child: Text("Close"))
                        ],
                      );
                    });
              },
              title: Text("Notification Title"),
              subtitle: Text("Notification Sub Title"),
            ),
          );
        },
      ),
    );
  }
}
