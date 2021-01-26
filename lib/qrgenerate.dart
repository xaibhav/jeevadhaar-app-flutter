import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';



String  animaltype, petname, dob, locality, notes, gender;
class GenerateQr extends StatefulWidget {
  @override
  _GenerateQrState createState() => _GenerateQrState();
}

class _GenerateQrState extends State<GenerateQr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
        title: new Text('QR-Code Generator'),
    ),
    body: Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              color: Colors.pink[200],
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  onChanged: (text1){
                    animaltype = text1;

                  },
                  decoration: InputDecoration(
                      hintText: "Animal Type (dog/cat/cow, etc)"
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              color: Colors.pink[200],
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  onChanged: (text1){
                    petname = text1;

                  },
                  decoration: InputDecoration(
                      hintText: "Animal's Name"
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              color: Colors.pink[200],
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  onChanged: (text1){
                    dob = text1;

                  },
                  decoration: InputDecoration(
                      hintText: "Approximate Month and year of birth"
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              color: Colors.pink[200],
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  onChanged: (text1){
                    gender = text1;

                  },
                  decoration: InputDecoration(
                      hintText: "Gender (M/F)"
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              color: Colors.pink[200],
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  onChanged: (text1){
                    locality = text1;

                  },
                  decoration: InputDecoration(
                      hintText: "General Locality"
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              color: Colors.pink[200],
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  onChanged: (text1){
                    notes = text1;

                  },
                  decoration: InputDecoration(
                      hintText: "Notes"
                  ),
                ),
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blueAccent,
            height: 60.0,
            child: Text("Submit"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => QRGenerated(),
              ),
              );
            },
          ),
        ],
      ),
    ),
    );
  }
}
 class QRGenerated extends StatefulWidget {
   @override
   _QRGeneratedState createState() => _QRGeneratedState();
 }

 class _QRGeneratedState extends State<QRGenerated> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         color: Colors.white,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: <Widget>[
             Center(
               child: QrImage(
                 size: 200.0,
                 data: "Name - $petname\nGeneral Locality - $locality\nApproximate Month of Birth - $dob\nAnimal - $animaltype\nGender - $gender\nNotes - $notes",

               ),
             ),
            Image.network("https://i.ibb.co/b3mmmz4/Whats-App-Image-2021-01-25-at-5-01-33-PM.jpg")

           ],
         ),
       ),
     );
   }
 }
