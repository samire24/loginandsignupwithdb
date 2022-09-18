import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/pages/signup.dart';
import 'package:login_signup/widgets/getHeader.dart';
import 'package:login_signup/widgets/getTextFormField.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login and SignUp",) ,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                getHeader(headerName: "Login",),
                getTextFormField(
                    controller: _conUserId,
                    hintname: "User ID",
                    icon: Icons.person),
                const SizedBox(height: 5,),
                getTextFormField(
                    controller: _conPassword,
                    hintname: 'password',
                    icon: Icons.lock,
                  isObscureText: true,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(30),
                  child: FlatButton(
                    onPressed: (){

                    },
                    child: Text("Login", style: TextStyle(color: Colors.white),),
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.blue
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account?'),
                      FlatButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder:(_)=>SignUpFrorm()));
                      },
                          textColor: Colors.blue,
                          child: Text('SignUp'))
                    ],
                  ),
                )

                ]
            ),
          ),
        ),
      ),
    );
  }
}
