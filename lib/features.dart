import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './homepage.dart';
import './howteamsworks.dart';
import './reducefriction.dart';
import './collaboratetogether.dart';
import './designedforprivacy.dart';
import './buildconnectedteams.dart';

class Features extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      width: double.infinity,
      child: Column(children: [
        HomePage(), //1st Row
        HowTeamsWorks(), //2nd Row
        ReduceFriction(), //3rd Row
        CollaborateTogether(), //4th Row
        DesignedForPrivacy(), //5th Row
        buildconnectedteams(), //6th Row
      ]),
    ));
  }
}
