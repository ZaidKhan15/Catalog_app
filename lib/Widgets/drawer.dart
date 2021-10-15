import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
                  accountName: Text('Zaid'),
                  accountEmail: Text('zaid159080@gmail.com'),
                  currentAccountPicture: Image.asset("assets/images/profilee.png")
                  ),
                  
                  )
        ],
      ),
    );
  }
}
