import 'package:flutter/material.dart';

class DesignedForPrivacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 50),
          child: Row(   children: [
            Expanded(flex:1,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(

                    child: Material( // with Material
                      child: Image(image: AssetImage('assets/designedforprivacy.png')),
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
                            Text('Designed with \nprivacy in mind.',
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
                                'You are always in control of what gets shared. Turn '
                                '\noff your mic or camera whenever you want — or let '
                                '\nthem turn off automatically when Teamflow is in the '
                                '\nbackground. Need to focus? Set an away message '
                                '\nand lock your space.',
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
