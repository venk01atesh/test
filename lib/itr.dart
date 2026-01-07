import 'package:flutter/material.dart';

class itr extends StatelessWidget {
   itr({super.key});
  List<String> items=List.generate(1000, (index)=>'Item${index+1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(itemBuilder: (context,index)=>ListTile(
          title: Text("hello"),
          subtitle: Text("2"),
        ),itemCount: 3),
    );
  }
}
