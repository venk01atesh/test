import 'package:flutter/material.dart';

class Counter extends StatefulWidget {

  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Container(
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 60,),
                  Text("Item counter",style: TextStyle(fontSize: 30),),
                  Text("$count",style: TextStyle(fontSize: 45),),
                  Image.asset("lib/assets/$count.jpeg",fit: BoxFit.cover,),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      count++;
                    });
                  }, child: Text("Click"))
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
