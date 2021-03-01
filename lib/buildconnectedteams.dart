import 'package:flutter/material.dart';

createCardDetails(String assetImage, String heading, String description) {
  return Container(
    width: 375,
    height: 250,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 0,6),
          child: SizedBox(
            width: 55,
            height: 55,
            child: Card(
              elevation: 2.0,
              color: Color(0xFFf6faff),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: Image(
                image: AssetImage(assetImage),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 0, 6),
          child: Text(heading,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  letterSpacing: 0.5)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 0, 25),
          child: Text(description,
              textAlign: TextAlign.left,
              style:
                  TextStyle(fontSize: 16.0, height: 1.5, letterSpacing: 0.5)),
        ),
      ],
    ),
  );
}

class BuildConnectedTeams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Row(
      /*Text Card*/
      children: [
        Container(
            //height: 150,
            width: MediaQuery.of(context).size.width,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(60, 50, 60, 50),
                child: Card(
                    elevation: 1.0,
                    color: Color(0xFFf6faff),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Text('Build more \nconnected teams',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                            ],
                          ), //Text Row
                          Row(children: [


                            createCardDetails(
                                'assets/hangouttogethericon.png',
                                'Hang out together',
                                'Teamflow is your virtual office, shared '
                                    '\nonly with the people you invite. Invite '
                                    '\nyour co-workers or send a link to external '
                                    '\nguests to meet'),
                            createCardDetails(
                                'assets/hearpeopleicon.png',
                                'Hear people around you',
                                'Use WASD or click and drag your avatar '
                                    '\nto move. Walk in and out of conversations '
                                    '\njust like in the real world.'),
                            createCardDetails(
                                'assets/feelpresenceicon.png',
                                'Feel presence',
                                'Open it when you’re ready to start your '
                                    '\nday and say Hi.  Unlike Zoom, you don\'t '
                                    '\nopen it just when you\'re in meetings — '
                                    '\nyou and your team hang out there all day.'),
                            //Icon and text Row1
                          ]),
                          Row(children: [
                            createCardDetails(
                                'assets/encryptedicon.png',
                                'Encrypted and private',
                                'Carefully built and crafted in the USA. We '
                                    '\nuse 256-bit TLS encryption and call '
                                    '\nvideo, audio, and media are protected by '
                                    '\nAES-128 encryption.'),
                            createCardDetails(
                                'assets/teamalignmenticon.png',
                                'Team alignment',
                                'Bring people on the same page. Open '
                                    '\napps — to take notes, whiteboard, play '
                                    '\ngames… Apps appear in a shared space, '
                                    '\neveryone can see them and use it '
                                    '\nsimultaneously.'),
                            createCardDetails(
                                'assets/meetinsecondsicon.png',
                                'Meet in seconds',
                                'No software to install. Join in seconds with a simple link.'),
                            //Icon and text Row1
                          ]),
                          Row(children: [
                            createCardDetails(
                                'assets/bandwidthfriendlyicon.png',
                                'Bandwidth Friendly',
                                'We are designed around optimizing your '
                                    '\nbandwidth. Up to 8 people on a 2mbps '
                                    '\nconnection.'),
                            createCardDetails(
                                'assets/customizeofficeicon.png',
                                'Customize your office',
                                'Design your office how you see fit with '
                                    '\ncustom room layouts, audio zones and '
                                    '\nfurniture.'),

                            //Icon and text Row1
                          ]),
                        ]))))
      ],
    ));
  }
}