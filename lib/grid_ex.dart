import 'package:flutter/material.dart';
import 'package:untitled/COUNTER.DART.dart';

import 'itr.dart';

class grid_ex extends StatelessWidget {
  List<String> items=List.generate(100,(index)=> '${index+1}');
  grid_ex({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(itemBuilder:(Context,index)=>ElevatedButton(onPressed: (){
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Counter()));
        }, child: Center(
          child: Container(
            height: 50,
            width: 50,
            child: Text("click",style: TextStyle(color: Colors.blue),),
          ),
        )),itemCount: items.length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 30,crossAxisSpacing: 10,childAspectRatio: 4),),
      ),
    );
  }
}