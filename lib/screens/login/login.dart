import 'package:flutter/material.dart';
import 'package:iw_assignment_flutter_venusha/model/authModel.dart';
import 'package:iw_assignment_flutter_venusha/screens/home/home.dart';
import 'package:iw_assignment_flutter_venusha/styles/AppStyles.dart';
import 'package:iw_assignment_flutter_venusha/widgets/CustomButton.dart';
import 'package:provider/provider.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = "";
  String password = "";

  void handleLogin(AuthModel usernameValue) {
    if (username == "venusha" && password == "123") {
      //print("LOGIN");
      //final usernameValue = 
     // Provider.of(context, listen: false).setUsername(username);
     usernameValue.setUsername(username);
     // print(Provider.of(context).username);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    } else {
      print("invalid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthModel>(builder:(context, value, child) => Material(
      child: SafeArea(
        child: Container(
          decoration: AppStyles.containerDecorations,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login", style: AppStyles.loginTextStyle),
              Text(value.username, style: AppStyles.loginTextStyle),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  decoration: InputDecoration(hintText: "Username"),
                  onChanged: (text) {
                   setState(() {
                     username = text;
                   });
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child:  TextField(
                  onChanged: (text){
                    setState(() {
                      password = text;
                    });
                  },
                  decoration: InputDecoration(hintText: "Password"),
                ),
              ),
              SizedBox(height: 20.0),
              CustomButton(
                  text: "Login",
                  onPressed:(){
                    final usn = context.read<AuthModel>();

                    handleLogin(usn);
                  })
            ],
          ),
        ),
      ),
    ),);
  }
}
