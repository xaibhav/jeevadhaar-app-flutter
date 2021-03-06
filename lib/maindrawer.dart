import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'updates.dart';

final datenow = new DateTime.now();

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(40.0)),
              gradient: LinearGradient(colors: [Colors.amber[600], Colors.red[600]]),
            ),
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          //firebase se linked karna hai vro
                          'assets/logo1.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'USERNAME',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: FlatButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Privacy(),
                ),
                );
              },
              icon: Icon(
                Icons.library_books,
              ),
              label: Text(
                "Privacy Policy",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[900],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: FlatButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Userguide(),
                ),
                );
              },
              icon: Icon(
                Icons.library_books,
              ),
              label: Text(
                "User-Guide",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[900],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: FlatButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Framework(),
                ),
                );
              },
              icon: Icon(
                Icons.computer,
              ),
              label: Text(
                "App framework",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[900],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: FlatButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle,
              ),
              label: Text(
                "LogOut",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[900],
                ),
              ),
            ),
          ),
          Container(

            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red[600], Colors.amber[600]]),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '$datenow',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void func(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text("It will be available soon!"),
      ),
    );
  }
}
