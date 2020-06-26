import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String name = 'Apoorv Singh';
  final String email = 'apoorv-singh@outook.com';
  final String phoneNo = '+91 7656 764 543';
  final String aboutMe =
      'I\'m a self taught flutter App Developer, who\'s had a very keen interest in App Development, Machine Learning as well as creative tasks like video production and editing. Thank You for checking my app out.';

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 10,
          title: Text('My Resume'),
          automaticallyImplyLeading: true,
        ),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 15),
                buildMainHeaderCard(),
                buildAboutMeCard(),
                buildSkillsCard(), //Skills
                buildEducationCard(),
                buildEtcCard(),
                buildContactCard(),
              ]),
        ));
  }

  Card buildEtcCard() {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 7.5, 10, 7.5),
      color: Colors.white,
      elevation: 10,
      shadowColor: Colors.black,
      child: Column(
        children: <Widget>[
          SizedBox(height: 2),
          Text('Co-Curricullars',
              style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: 15,
                  fontWeight: FontWeight.w600)),
          SizedBox(height: 2),
          Divider(height: 1, thickness: 2),
          SizedBox(height: 5),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 7.5, 5, 7.5),
            child: Table(
              children: [
                TableRow(children: [
                  Text('${String.fromCharCode(0x2022)} Playing Music',
                      style: subHead),
                  Text('${String.fromCharCode(0x2022)} Programming',
                      style: subHead),
                  Text('${String.fromCharCode(0x2022)} Pooping',
                      style: subHead),
                ])
              ],
            ),
          ),
          SizedBox(height: 5)
          // Grad
        ],
      ),
    );
  }

  Card buildContactCard() {
    return Card(
        margin: EdgeInsets.fromLTRB(10, 7.5, 10, 7.5),
        color: Colors.white,
        elevation: 10,
        shadowColor: Colors.black,
        child: Column(
          children: <Widget>[
            SizedBox(height: 2),
            Text('Contact Me',
                style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 15,
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 2),
            Divider(height: 1, thickness: 2),
            Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.teal),
                    title: Text('CallMe'),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal),
                    title: Text('MailMe'),
                  ),
                )
              ],
            ),
            Divider(height: 1, thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(LineAwesomeIcons.facebook_square,
                      color: Colors.blue, size: 35),
                  onPressed: () {
                    _launchURL('https://www.facebook.com/krazyapoorv/');
                  },
                ),
                IconButton(
                  icon: Icon(LineAwesomeIcons.youtube_square,
                      color: Colors.red, size: 35),
                  onPressed: () {
                    _launchURL(
                        'https://www.youtube.com/channel/UCP-MxAFHfli4mL4SsA4fnmQ');
                  },
                ),
                IconButton(
                  icon: Icon(LineAwesomeIcons.github_square,
                      color: Colors.blueGrey, size: 35),
                  onPressed: () {
                    _launchURL('https://github.com/noobie2');
                  },
                )
              ],
            ),
            SizedBox(height: 10)
          ],
        ));
  }

  Card buildEducationCard() {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 7.5, 10, 7.5),
      color: Colors.white,
      elevation: 10,
      shadowColor: Colors.black,
      child: Column(
        children: <Widget>[
          SizedBox(height: 2),
          Text('Education',
              style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: 15,
                  fontWeight: FontWeight.w600)),
          SizedBox(height: 2),
          Divider(height: 1, thickness: 2),
          SizedBox(height: 5),
          ListTile(
            dense: false,
            isThreeLine: true,
            leading: Text(
              '10th,12th\n2012-2014',
              style: subHead,
            ),
            title: Text(
              'CRPF Public School, Rohini-Delhi',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
                'Studied PCM with Computer SC. Scored 8.6 CGPA in 10th & 81.7% in 12th.'),
          ),
          ListTile(
            dense: false,
            isThreeLine: true,
            leading: Text(
              'B.Tech\n2014-2018',
              style: subHead,
            ),
            title: Text(
              'ASET, Amity University, UP',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
                'B.Tech in Instrumentation & Control, Scored 69.7%, Won 3rd prize in Major Project Competition in whole IPU.'),
          ),
          SizedBox(height: 5)
          // Grad
        ],
      ),
    );
  }

  Card buildSkillsCard() {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 7.5, 10, 7.5),
      color: Colors.white,
      elevation: 10,
      shadowColor: Colors.black,
      child: Column(
        children: <Widget>[
          SizedBox(height: 2),
          Text('Skills',
              style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: 15,
                  fontWeight: FontWeight.w600)),
          SizedBox(height: 2),
          Divider(
            height: 1,
            thickness: 2,
          ),
          SizedBox(
            height: 5,
          ),
          buildSkillRows('Flutter', 0.75),
          buildSkillRows('ML', 0.5),
          buildSkillRows('Python', 0.70),
          SizedBox(height: 7.5) //LAST ONE
        ],
      ),
    );
  }

  Row buildSkillRows(String skillName, double value) {
    return Row(
      children: <Widget>[
        SizedBox(width: 10),
        Expanded(
          child: Text(
            skillName,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(value: value),
        ),
        SizedBox(width: 10)
      ],
    );
  }

  Card buildAboutMeCard() {
    return Card(
        margin: EdgeInsets.fromLTRB(10, 15, 10, 7.5),
        color: Colors.white,
        elevation: 10,
        shadowColor: Colors.black,
        child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              aboutMe,
              style: subHead,
            )));
  }

  Card buildMainHeaderCard() {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      elevation: 10,
      shadowColor: Colors.black,
      child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              width: 100,
              child: Image.asset('images/my_pic.jpg')), // Profile Pic
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name,
                  style: TextStyle(
                      wordSpacing: 2,
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.teal,
                height: 2,
                width: 270,
              ), //Divider line
              SizedBox(height: 10),
              Row(children: <Widget>[
                Icon(Icons.work, color: Colors.teal),
                SizedBox(width: 5),
                Text('Flutter Developer'),
              ]),
              SizedBox(height: 3),
              Row(children: <Widget>[
                Icon(Icons.location_on, color: Colors.teal),
                SizedBox(width: 5),
                Text('Delhi, India')
              ]), //jobName
              // Location
            ],
          ), // Name, job, location details
        ],
      ),
    );
  }

  TextStyle subHead =
      TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black);
}
