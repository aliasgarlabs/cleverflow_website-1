import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollaborateTogether extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 50, 0, 50),
          child: Row(   children: [
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
                            Text('Collaborate \nbetter together.',
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
                                'Lower the barrier to remote collaboration with '
                                    '\nscreen-sharing, whiteboards, scratchpads, timers '
                                    '\nand coming soon, integrations to your favorite apps.',
                                style: TextStyle(
                                    fontSize: 18, height: 1.5, letterSpacing: 0.5)),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(flex:1,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 525,
                      child: Material( // with Material
                        child: Image(image: AssetImage('assets/collaboratetogether.png')),
                        elevation: 1.0,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),

                        clipBehavior: Clip.antiAlias,)

                  ),
                ],
              ),
            ),

          ]),
        ));
  }
}

