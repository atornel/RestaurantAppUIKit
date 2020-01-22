import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: ()=>Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          "Notifications",
        ),
        elevation: 0.0,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
              title: Text("Your Order has been delivered successfully"),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.clear,
                  color: Colors.white,
                ),
              ),
              title: Text("Error processing your order"),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Icon(
                  Icons.directions_bike,
                  color: Colors.white,
                ),
              ),
              title: Text("You order has been processed and will be delivered shortly"),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
              ),
              title: Text("Please Verify your email address"),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
