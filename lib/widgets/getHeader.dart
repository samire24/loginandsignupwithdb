import 'package:flutter/material.dart';
class getHeader extends StatelessWidget {
  String headerName;

   getHeader({Key? key, required this.headerName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 50,),
           Text(headerName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
          SizedBox(height: 10,),
          Image.asset("assets/images/lasgorj.png",
            height: 150,
            width: 150,
          ),
          const Text('Lasgorjies Concept',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
        ],
      ),
    );
  }
}
