import 'dart:ui';
import 'package:firebase_login_example/core/services/auth.dart';
import 'package:firebase_login_example/ui/views/wrapper.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final AuthService _auth = AuthService();
  bool loading = false;

  Widget _signOutButton() {
    return InkWell(
      onTap: () async {
        if (this.mounted){setState(() => loading = true);}

        await _auth.signOut();

        if (this.mounted){setState(() => loading = false);}

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Wrapper()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0xff16a085).withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ],
            color: Colors.white),
        child: Text(
          'Sign Out',
          style: TextStyle(fontSize: 20, color: Color(0xff16a085)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(2, 4),
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff1abc9c), Color(0xff118770)])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.asset('assets/images/logo_light.png',width: 250,height: 250,),

                Text(
                  "Welcome to Firebase Login Example!",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                _signOutButton(),
                SizedBox(
                  height: 150,
                ),
              ],
            ),
          ),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
  }
}
