import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HowTeamsWorks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    createHowItWorksCard(String cardNo, String cardText, String cardAsset,
        double smallCardWidth) {
      return Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: 375,
              height: 375,
              child: Card(
                  elevation: 1.0,
                  color: Color(0xFFf6faff),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 55,
                          height: 55,
                          child: Card(
                            elevation: 3.0,
                            color: Color(0xFFf6faff),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Center(
                                child: Text(
                              cardNo,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            )),
                          ),
                        ), //Card Sized Box
                        SizedBox(
                          child: Text(cardText,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  height: 1.5,
                                  letterSpacing: 0.5)),
                        ), //Text Sized Box
                        SizedBox(
                          width: smallCardWidth,
                          child: Image(
                            image: AssetImage(
                                cardAsset), // THIS IS WHATS BEING SHIFTED
                          ),
                        ), //Picture Sized Boxr
                      ]))),
        ),
      );
    }

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,

        child: Row(children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60, 8, 0, 50),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Here\'s how \na team flow works.',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            )),
                      ]),
                ),
              ),
              Row(
                /*Cards*/
                children: [
                  createHowItWorksCard(
                      '1',
                      'You see your video in a bubble on \na virtual office floor plan.',
                      'assets/bubblevideo.png',
                      135),
                  createHowItWorksCard(
                      '2',
                      'You move your video around like \nin a video game.',
                      'assets/gamevideo.png',
                      175),
                  createHowItWorksCard(
                      '3',
                      'You only hear people \naround your bubble',
                      'assets/hearpeoplearound.png',
                      225),
                ],
              ),
              Row(
                /*Text Card*/
                children: [
                  Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(60,8,60,8),
                        child: Card(
                            elevation: 1.0,
                            color: Color(0xFFf6faff),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      'This means that when you want to check in on someone, '
                                      'you can just alk upto them. \nNo more back and forth on'
                                      ' Slack or Zoom scheduling nightmares.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          height: 1.5,
                                          letterSpacing: 0.5))
                                ])),
                      ))
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
