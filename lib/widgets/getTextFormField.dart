import 'package:flutter/material.dart';

class getTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hintname;
  IconData icon;
  bool isObscureText;
  TextInputType inputType;

  getTextFormField({Key? key,
     required this.controller,
     required this.hintname,
     required this.icon,
     this.inputType = TextInputType.text,
     this.isObscureText=false,})
       : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        obscureText: isObscureText,
        keyboardType: inputType,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          prefixIcon: Icon(icon,color: Colors.blue,),
          hintText: hintname,
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}
