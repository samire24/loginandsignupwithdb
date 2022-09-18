import 'package:flutter/material.dart';
import 'package:login_signup/pages/login_page.dart';
import 'package:login_signup/widgets/getHeader.dart';
import 'package:login_signup/widgets/getTextFormField.dart';

class SignUpFrorm extends StatefulWidget {
  const SignUpFrorm({Key? key}) : super(key: key);

  @override
  _SignUpFrormState createState() => _SignUpFrormState();
}

class _SignUpFrormState extends State<SignUpFrorm> {
  final _conUserId = TextEditingController();
  final _conUsername = TextEditingController();
  final _conUserEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conCPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login and Sign Up'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getHeader(headerName: 'SignUp',),
                  getTextFormField(
                      controller: _conUserId,
                      hintname: "User ID",
                      icon: Icons.person),
                  const SizedBox(height: 5,),
                  getTextFormField(
                      controller: _conUsername,
                      hintname: "Username",
                      inputType: TextInputType.name,
                      icon: Icons.person_outline),
                  const SizedBox(height: 5,),
                  getTextFormField(
                      controller: _conUserEmail,
                      hintname: "Email",
                      inputType: TextInputType.emailAddress,
                      icon: Icons.email),
                  const SizedBox(height: 5,),
                  getTextFormField(
                      controller: _conPassword,
                      hintname: "password",
                      icon: Icons.lock,
                  isObscureText: true,),
                  const SizedBox(height: 5,),
                  getTextFormField(
                      controller: _conCPassword,
                      hintname: "Confirm Password",
                      icon: Icons.lock,
                  isObscureText: true,),
                  const SizedBox(height: 5,),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(30),
                    child: TextButton(
                      onPressed: (){},
                      child: Text("SignUp", style: TextStyle(color: Colors.white),),
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
                        Text('Already have an account?'),
                        FlatButton(onPressed: (){
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>LoginForm()),
                              (Route<dynamic>route)=>false);
                        },
                            textColor: Colors.blue,
                            child: Text('SignIn'))
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
