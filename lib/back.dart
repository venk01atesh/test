import 'package:flutter/material.dart';
import 'package:untitled/follwers.dart';
import 'package:untitled/icon.dart';

String image_url="https://static.vecteezy.com/system/resources/thumbnails/040/455/942/small_2x/ai-generated-wooden-table-on-a-glittering-background-from-green-lights-free-photo.jpg";
class back extends StatelessWidget {
  const back({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        scrollDirection: Axis.vertical,
        children:[ Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity ,
              height: 300,
              child: Image.network(image_url,fit: BoxFit.cover,),
            ),
            Positioned.fill(
              bottom:-600,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)
                    ),color: Colors.black45
                  ),
                  width: 380,
                  height: 600,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children:[
                      Positioned.fill(
                        top: -50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Container(
                                  width: 250,
                                  height: 50,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Rabbae",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Text("WEB DEVELOPER",style: TextStyle(
                                  fontSize: 30,color: Colors.white
                                ),),
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(right: 40),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      icon(),
                                      SizedBox(width: 35,),
                                      icon(),
                                      SizedBox(width: 35,),
                                      icon(),
                                      SizedBox(width: 35,),
                                      icon(),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 45,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 45.0),
                                  child: Container(
                                    height: 100,
                                    width: 300,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        follwers("240K","FOLLOWERS"),
                                        follwers("24K","FOLLOWING"),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),

                  ]
                  ),
                ),
              ),
            ),

          ],
        ),

      ]
      )
    );
  }
}
