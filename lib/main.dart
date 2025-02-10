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
    return Scaffold(
      appBar: AppBar(title: Text("Layout Widget",),centerTitle: true,backgroundColor: Colors.blue,),
    body: SingleChildScrollView(padding: EdgeInsets.all(10),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      Container(height: 200,width: double.infinity, decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(20),),alignment: Alignment.center,child: Text("It's Container Layout", style: TextStyle(fontSize: 30, color: Colors.white),),),

      SizedBox(height: 20,),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
        Container(width: 100,height: 100, decoration:BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(20),),),
        Container(width: 100,height: 100, decoration:BoxDecoration(color: Colors.purpleAccent, borderRadius: BorderRadius.circular(20),)),
        Container(width: 100,height: 100, decoration:BoxDecoration(color: Colors.deepOrangeAccent, borderRadius: BorderRadius.circular(20)),),
        Container(width: 100,height: 100, decoration:BoxDecoration(color: Colors.lightGreenAccent, borderRadius: BorderRadius.circular(20)),),],),

      SizedBox(height: 10,),
      Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        Text("Column Widget 1", style: TextStyle(fontSize: 20),),
        SizedBox(height: 10,),
        Text("Column Widget 2", style: TextStyle(fontSize: 20),),
      ],),

      SizedBox(height: 20,),
      Stack(children: [
        Container(height: 100, width: double.infinity, color: Colors.blue,),
        Positioned(top: 20, left: 20, child: Container(width: 50,height: 50,color: Colors.yellow,),),
        Positioned(top: 20, left: 80, child: Container(width: 50, height: 50,color: Colors.yellow,),),
        Positioned(top: 20, left: 140, child: Container(width: 50, height: 50,color: Colors.yellow,),),
        Positioned(top: 20, left: 210, child: Container(width: 50, height: 50,color: Colors.yellow,),),
        Positioned(top: 20, left: 270, child: Container(width: 50, height: 50, color: Colors.yellow,),),
        Positioned(top: 20, left: 330, child: Container(width: 50, height: 50, color: Colors.yellow,),),
      ],),
    SizedBox(height: 20,),
      Align(alignment: Alignment.centerLeft,child: Container(height: 50,width: 100,color: Colors.teal,child: Center(child: Text("Aligned Box", style: TextStyle(fontSize: 15, color: Colors.white),),),),)
    ],),



    ));


  }
}
