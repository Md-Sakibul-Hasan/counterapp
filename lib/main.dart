import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      debugShowCheckedModeBanner: false,
      color: Colors.grey,
      home: Home(),

    );
  }
}

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int Count=0;

  void _Increment(){
    setState(() {
      Count++;
    });
  }

  void _Decrement(){
    setState(() {
      Count--;
    });
  }

  void _Reset(){
    setState(() {
      Count=0;
    });
  }


  ButtonStyle buttonStyle=ElevatedButton.styleFrom(

      padding: EdgeInsets.all(30),
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
      )

  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("$Count",style:TextStyle(fontSize:50 )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: _Increment, child: Text("Increment"),style: buttonStyle,),
              ElevatedButton(onPressed:_Decrement, child:Text("Decrement"),style: buttonStyle,),
              ElevatedButton(onPressed: _Reset, child: Text("Reset"),style: buttonStyle,)
            ],
          )
        ],
      ),
      
    );
  }
}

