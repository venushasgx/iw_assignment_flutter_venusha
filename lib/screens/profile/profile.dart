import 'package:flutter/material.dart';
import 'package:iw_assignment_flutter_venusha/styles/AppStyles.dart';

class Profile extends StatefulWidget {
  String username = "";
  Profile({Key? key, this.username = ""}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Welcome back ${widget.username}',style: AppStyles.loginTextStyle,)),
    );
  }
}
