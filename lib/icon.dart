import 'package:flutter/material.dart';

class icon extends StatelessWidget {
/*  List<Icon> icons=[Icon(Icons.facebook)];*/
  const icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: IconButton(onPressed: (){
        print("clicked");
      }, icon: Icon(Icons.facebook,size: 50)),
    );
  }
}
