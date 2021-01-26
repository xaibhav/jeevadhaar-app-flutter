import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'maindrawer.dart';
import 'qrscan.dart';
import 'updates.dart';
import 'qrgenerate.dart';
import 'package:carousel_slider/carousel_slider.dart';


class homescreen extends StatefulWidget {

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {


  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JEEVADHAAR",

      theme: ThemeData(

        appBarTheme: AppBarTheme(

          color: Colors.white70,
        ),
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(

          gradient: LinearGradient(colors: [Colors.white70, Colors.white70],
            begin: Alignment.topCenter,

            end:
            Alignment.bottomCenter),
        ),
        child: Scaffold(

          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.red),
            title: Image.asset("assets/logolong.png",
              height: 60,
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(0.0),
              ),
            ),
          ),
          drawer: MainDrawer(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        gradient: LinearGradient(
                            colors: [Colors.amberAccent[100], Colors.redAccent[100]]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),

                      child: IconButton(
                        icon: Image.asset("assets/icon1.png"),
                        onPressed: (){
Navigator.push(context, MaterialPageRoute(
  builder: (context) => QRViewExample(),
),
);
                        },
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        gradient: LinearGradient(
                            colors: [Colors.amberAccent[100], Colors.redAccent[100]]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),

                      child: IconButton(
                        icon: Image.asset("assets/icon2.png",
                        height: 120,width: 120,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => GenerateQr(),
                          ),
                          );
                        },
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        gradient: LinearGradient(
                            colors: [Colors.amberAccent[100], Colors.redAccent[100]]),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),

                      child: IconButton(
                        icon: Image.asset("assets/icon3.png"),
                        onPressed: (){

                        },
                      ),
                    ),
                  ],
                ),
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(40.0)),

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => DoandDont(),
                      ),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(

                          decoration: BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                                colors: [Colors.amber[500], Colors.red[900]]),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          ),
                          height: 80.0,
                          width: 80.0,
                          child: Icon(
                            Icons.book,
                            color: Colors.white,
                            size:50.0,
                            semanticLabel:
                            'Text to announce in accessibility modes',
                          ),
                        ),
                        Text("Do's and Don'ts"),
                      ],
                    ),
                    color: Colors.transparent,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Webviewforhelplines(),
                      ),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(

                          decoration: BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                                colors: [Colors.amber[500], Colors.red[900]]),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          ),
                          height: 80.0,
                          width: 80.0,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                            size:50.0,
                            semanticLabel:
                            'Text to announce in accessibility modes',
                          ),
                        ),
                        Text("Helplines"),
                      ],
                    ),
                    color: Colors.transparent,
                  ),



                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          //press karne pe navigate karne ke liye
                            builder: (context) => webweb()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(

                          decoration: BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                                colors: [Colors.amber[500], Colors.red[900]]),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          ),
                          height: 80.0,
                          width: 80.0,
                          child: Icon(
                            Icons.tv,
                            color: Colors.white,
                            size:50.0,
                            semanticLabel:
                            'Text to announce in accessibility modes',
                          ),
                        ),
                        Text("Updates"),
                      ],
                    ),
                    color: Colors.transparent,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Userguide(),
                      ),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(

                          decoration: BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                                colors: [Colors.amber[500], Colors.red[900]]),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          ),
                          height: 80.0,
                          width: 80.0,
                          child: Icon(
                            Icons.library_books,
                            color: Colors.white,
                            size:50.0,
                            semanticLabel:
                            'Text to announce in accessibility modes',
                          ),
                        ),
                        Text("User-Guide")
                      ],
                    ),
                    color: Colors.transparent,
                  ),
                ],
              ),
              Container(
alignment: Alignment.bottomCenter,
                child: CarouselSlider(

                  options: CarouselOptions(height: 150.0,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 15),),
                  items: ["https://i.ibb.co/ZLWSD35/Whats-App-Image-2021-01-25-at-10-40-06-AM-1.jpg",
                    "https://i.ibb.co/8r8rHST/Whats-App-Image-2021-01-25-at-10-40-06-AM.jpg",
                    "https://i.ibb.co/z7ph6Dh/Whats-App-Image-2021-01-25-at-10-40-05-AM.jpg",
                    "https://i.ibb.co/nn2hsL0/Whats-App-Image-2021-01-25-at-10-40-04-AM-1.jpg",
                    "https://i.ibb.co/qkv93jc/Whats-App-Image-2021-01-25-at-10-40-04-AM.jpg",
                    "https://i.ibb.co/GHwcVXV/Whats-App-Image-2021-01-25-at-10-40-03-AM-3.jpg",
                    "https://i.ibb.co/g7Y7MMv/Whats-App-Image-2021-01-25-at-10-40-03-AM-1.jpg",
                    "https://i.ibb.co/XsM3V22/Whats-App-Image-2021-01-25-at-10-40-03-AM.jpg",
                    "https://i.ibb.co/tX6MRHD/Whats-App-Image-2021-01-25-at-10-22-18-AM.jpg",
                    "https://i.ibb.co/drMJC07/Whats-App-Image-2021-01-25-at-10-22-18-AM-1.jpg",
                    "https://i.ibb.co/ZSRV0Cv/Whats-App-Image-2021-01-25-at-10-22-18-AM-2.jpg",
                    "https://i.ibb.co/LvjMF9K/Whats-App-Image-2021-01-25-at-10-22-17-AM.jpg",
                    "https://i.ibb.co/0fYz1x5/Whats-App-Image-2021-01-25-at-10-22-16-AM.jpg"].map((i)

                  {

                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.transparent
                            ),
                            child: Image.network("$i")
                        );
                      },
                    );
                  }).toList(),
                ),




                //Padding(
                  //padding: EdgeInsets.all(24.0),
                  //child: Image.network("https://i.ibb.co/0fYz1x5/Whats-App-Image-2021-01-25-at-10-22-16-AM.jpg")
                //),
                //child: WebView(initialUrl: "https://jeevadhaar.blogspot.com",
                //javascriptMode: JavascriptMode.unrestricted,
                //),
                decoration: BoxDecoration(
                  color: Colors.white,

                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.white]),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
                ),
                height: 150,
                width: double.infinity,

              ),
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
