import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
            flex: 1,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Feel like \na team again.',
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Teamflow is a virtual office for your team \nto hang out in. Bring back the presence \nof being in the office, the energy of \nworking in the same room, the \nspontaneity of hallway conversations — \nthe joy of feeling like a team.',
                        style: TextStyle(
                            fontSize: 18, height: 1.5, letterSpacing: 0.5)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      child: Container(
                        width: 400,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Enter your email...',
                            filled: true,
                            fillColor: Colors.grey[200],
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1.0)),
                            suffixIcon: Container(
                              height: 50,
                              width: 150,
                              child: ElevatedButton(
                                child: Text('Join the waitlist'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.teal[400],
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ])),
        Column(children: [
          Stack( children: [
            Container(
              height: 650,
              width: 650,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.0)),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                      image: AssetImage('assets/homepagebkg.jpg'),

                      ),
              ),
            ),
            Container(
                height: 650,
                child: Image(image: AssetImage('assets/homepage.png')))
          ])
        ])
      ],
    ));
  }
}
