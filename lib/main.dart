import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp (home:HomeActivity());
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Layout Widget",),centerTitle: true,backgroundColor: Colors.blue,),
    body: Padding(padding: EdgeInsets.all(10),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      Container(height: 200,width: double.infinity, decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(20),),alignment: Alignment.center,child: Text("It's Container Layout", style: TextStyle(fontSize: 30, color: Colors.white),),),

      SizedBox(height: 20,),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
        Container(width: 100,height: 100, decoration:BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(20))),
        Container(width: 100,height: 100, decoration:BoxDecoration(color: Colors.purpleAccent, borderRadius: BorderRadius.circular(20),)),
        Container(width: 100,height: 100, decoration:BoxDecoration(color: Colors.deepOrangeAccent, borderRadius: BorderRadius.circular(20)),),
        Container(width: 100,height: 100, decoration:BoxDecoration(color: Colors.lightGreenAccent, borderRadius: BorderRadius.circular(20)),),],)
    ],),),



    );


  }
}
