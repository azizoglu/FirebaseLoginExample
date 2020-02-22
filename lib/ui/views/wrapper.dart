import 'package:firebase_login_example/data/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';
import 'login_page.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Get the user value when change
    final user = Provider.of<User>(context);

    // Check user and show specialized page
    if(user == null)
    {
      return LoginPage();
    }
    else
    {
      return HomePage();
    }
  }
}
