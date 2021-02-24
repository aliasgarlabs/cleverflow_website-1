import 'package:flutter/material.dart';

class ReduceFriction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 50, 0, 50),
          child: Row(   children: [
            Expanded(flex:1,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 525,
                      child: Material( // with Material
                        child: Image(image: AssetImage('assets/reducefriction.png')),
                        elevation: 1.0,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),

                        clipBehavior: Clip.antiAlias,)

                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40,0,0,15),
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Reduce the friction \nto talk with your teams.',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40,0,0,15),
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                                'Walk or move to join a conversation just like you '
                                    '\nwould in the office. You can only hear or be heard by '
                                    '\npeople around you.  Teamflow\'s spatial audio makes '
                                    '\nfor the most natural happy hours, hangouts, or '
                                    '\nspontaneous chats.',
                                style: TextStyle(
                                    fontSize: 18, height: 1.5, letterSpacing: 0.5)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ]),
        ));
      }
}
