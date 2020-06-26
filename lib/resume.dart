//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(
//    MyApp(),
//  );
//}
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    String bullet = "\u2022 ";
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.teal,
//        body: SafeArea(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              CircleAvatar(
//                radius: 50,
//                backgroundColor: Colors.red,
//                backgroundImage: AssetImage('images/my_pic.jpg'),
//              ),
//              Text(
//                'Apoorv Singh',
//                style: TextStyle(
//                    fontFamily: 'Pacifico',
//                    fontSize: 20,
//                    fontWeight: FontWeight.w500,
//                    color: Colors.white),
//              ),
//              SizedBox(height: 5),
//              Text(
//                'FLUTTER DEVELOPER',
//                style: TextStyle(
//                    fontSize: 15,
//                    fontStyle: FontStyle.italic,
//                    color: Colors.white,
//                    letterSpacing: 2,
//                    fontWeight: FontWeight.w400),
//              ),
//              SizedBox(
//                width: 200,
//                height: 20,
//                child: Divider(height: 20, thickness: 3),
//              ),
//              buildCard(text: '+91 7011 024 828', icon: Icons.phone),
//              buildCard(text: 'apoorv-singh@outlook.com', icon: Icons.email),
//              Container(
//                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//                decoration: BoxDecoration(
//                    color: Colors.white,
//                    borderRadius: BorderRadius.circular(4)),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    // Skills
//                    Text('Skills'),
//                    Divider(
//                      height: 4,
//                      thickness: 2,
//                      color: Colors.teal,
//                    ),
//                    Row(children: <Widget>[
//                      Text('$bullet pooping'),
//                      Text('$bullet pooping')
//                    ]),
//
//                    SizedBox(height: 10),
//                    // Education
//                    Text('Education'),
//                    Divider(
//                      height: 4,
//                      thickness: 2,
//                      color: Colors.teal,
//                    ),
//                    Text(
//                        '2014 - 2018 : \n $bullet B. Tech / Amity School of Engineering and Technology, Delhi'
//                            "\n \b Scored 69.7% in I&C Engineering.\nStudied subjects like Process Control, Industrial Automation, Artificial Neural Networks, OOP etc.\nWon 3 rd prize in Major Project Competition in IP University.\n"),
//                    Text("$bullet CRPF Public School - 10th, 12th:\n"
//                        "       Studien PCM, played sports, Secred 69%."),
//                    //
//                    SizedBox(height: 10),
//                    //
//                    Text('Work Ex'),
//                    Divider(
//                      height: 4,
//                      thickness: 2,
//                      color: Colors.teal,
//                    ),
//                    Text("$bullet CRPF Public School - 10th, 12th:\n"
//                        "       Studien PCM, played sports, Secred 69%."),
//                    //
//                    SizedBox(height: 10),
//                    //
//                    Text('Hobbies'),
//                    Divider(
//                      height: 4,
//                      thickness: 2,
//                      color: Colors.teal,
//                    ),
//                    Text("$bullet CRPF Public School - 10th, 12th:\n"
//                        "       Studien PCM, played sports, Secred 69%."),
//                  ],
//                ),
//              )
//              // resume()
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//
//  Card buildCard({String text, IconData icon}) {
//    return Card(
//      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//      child: ListTile(
//        leading: Icon(
//          icon,
//          size: 30,
//          color: Colors.teal,
//        ),
//        title: Center(
//          child: Text(
//            text,
//            style: TextStyle(color: Colors.black, fontSize: 20),
//          ),
//        ),
//      ),
//    );
//  }
//}
