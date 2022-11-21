import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Elevated Button", style: TextStyle(color:Color(0xff003366),),
              ),
              style : ElevatedButton.styleFrom(
                primary : Color(0xffffb6c1),
                shadowColor: Colors.black,
                elevation : 20,
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.all(Radius.circular(20)),
                  side : BorderSide(color:Color(0xff8cb0ad),),
                ),
              ),
              onPressed: (){
                print("Elevated Button Tıklandı");
              }
            ),
            TextButton(
              child: Text("Text Button", style : TextStyle(color : Color(0xff003366))),
              style : TextButton.styleFrom(
                backgroundColor : Color(0xffd8e4e3),
                shadowColor: Colors.black,
                elevation : 20,
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.all(Radius.circular(20)),
                  side: BorderSide(color : Color(0xffff999e),),
                ),
              ),
              onPressed: (){
                print("Text Button Tıklandı");
              }
            ),
            
          ],
        ),
      ),
    );
  }
}
