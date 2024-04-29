import 'package:flutter/material.dart';
import 'package:iw_assignment_flutter_venusha/model/authModel.dart';
import 'package:iw_assignment_flutter_venusha/screens/albums/albums.dart';
import 'package:iw_assignment_flutter_venusha/screens/posts/posts.dart';
import 'package:iw_assignment_flutter_venusha/screens/profile/profile.dart';
import 'package:iw_assignment_flutter_venusha/styles/AppStyles.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthModel>(
        builder: (context, provider, _) => DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  title: Text("Login App"),
                  bottom: const TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.person), text: 'Profile',),
                      Tab(icon: Icon(Icons.photo_camera_front_sharp), text: 'Albums',),
                      Tab(icon: Icon(Icons.calendar_month), text: 'Posts',),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    Profile(username: provider.username,),
                   Albums(),
                    Posts(),
                  ],
                ),
              ),
            ));
  }
}
