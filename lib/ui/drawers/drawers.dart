import 'package:flutter/material.dart';

import '../routes/routes.dart';

Widget createDrawer(BuildContext context) {
  return Drawer(
      child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      Container(
        //color: Theme.of(context).canvasColor,
        child: DrawerHeader(
          child: UserAccountsDrawerHeader(
            accountName: Text('UserName'),
            accountEmail: Text('UserEmail'),
            currentAccountPicture: const CircleAvatar(
              child: FlutterLogo(
                size: 42.0,
              ),
            ),
          ),
        ),
      ),
      ListTile(
          leading: Icon(Icons.send_outlined),
          title: Text('Invoice'),
          onTap: () {
            Navigator.pushReplacementNamed(context, Routes.invoice!);
          }),
      ListTile(
          leading: Icon(Icons.volunteer_activism),
          title: Text('Customer'),
          onTap: () {
            Navigator.pushReplacementNamed(context, Routes.Customer);
          }),
      ListTile(
          leading: Icon(Icons.event_note),
          title: Text('Item'),
          onTap: () {
            Navigator.pushReplacementNamed(context, Routes.Item);
          }),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),
      Title(color: Colors.black, child: Text('Communicate')),
      ListTile(
        leading: const Icon(Icons.share),
        title: Text('Share'),
        onTap: () {
          Navigator.pushReplacementNamed(context, Routes.Item);
        },
      ),
      ListTile(
        leading: const Icon(Icons.favorite_border),
        title: Text('Rate us'),
        onTap: () {
          Navigator.pushReplacementNamed(context, Routes.Item);
        },
      ),
    ],
  ));
}
