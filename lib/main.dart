import 'package:first_app/nextpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'hamu',),

    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title ;



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String text = "haa";


  @override
  final items = List<String>.generate(10000, (i) => "Item ");

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('はむやっち'),
      ),
      body: Container(
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 7,
        children: List.generate(100, (index){
          return Column(
            children: <Widget>[
             Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')
            ]

          );
        })

      ),
      ),
    );
  }

}