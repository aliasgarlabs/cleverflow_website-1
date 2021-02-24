import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class BuildConnectedTeams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(child:Row(
      /*Text Card*/
      children: [
        Container(
            //height: 150,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(60,50,60,50),
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
                            Text(
                                'Build more \nconnected teams',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                    )),
                          ],
                        ),  //Text Row
                        Row(
                          children: [
                            Column(
                              children: [
                                //ImageIcon(AssetImage('assets/hangouttogethericon.svg'),),

                                Text(
                                    'Hang out together',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        letterSpacing: 0.5)),
                                Text(
                                    'Teamflow is your virtual office, shared '
                                        '\nonly with the people you invite. Invite '
                                        '\nyour co-workers or send a link to external '
                                        '\nguests to meet',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        height: 1.5,
                                        letterSpacing: 0.5)),
                              ],
                            ),
                          ],
                        ),  //Icon and text Row1
                 /*       Row(
                          children: [
                            Text(
                                'This means that when you want to check in on someone, '
                                    'you can just alk upto them. \nNo more back and forth on'
                                    ' Slack or Zoom scheduling nightmares.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    height: 1.5,
                                    letterSpacing: 0.5)),
                          ],
                        ), //Icon and Text Row2
                        Row(
                          children: [
                            Text(
                                'This means that when you want to check in on someone, '
                                    'you can just alk upto them. \nNo more back and forth on'
                                    ' Slack or Zoom scheduling nightmares.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    height: 1.5,
                                    letterSpacing: 0.5)),
                          ],
                        )*/  //Icon and Text Row3
                      ])),
            ))
      ],
    ));
  }
}
