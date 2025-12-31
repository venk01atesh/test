import 'package:flutter/material.dart';

class follwers extends StatelessWidget {
  String detail1;
  String detail2;
   follwers(this.detail1,this.detail2,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(detail1,style: TextStyle(color: Colors.white,fontSize: 20),),
          ),
          Text(detail2,style: TextStyle(color: Colors.white54,fontSize: 22),)

        ],
      ),
    );


  }
}
