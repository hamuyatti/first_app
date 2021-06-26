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



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String text = "haa";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('はむやっち'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
                'hamu',
                 style: TextStyle(
                     fontSize: 40,
                   color:Colors.green,
                   fontWeight: FontWeight.w200,
                   decoration: TextDecoration.underline
                  )
            ),
            Text('paaa'),
            FlatButton(
             child: Text(text),
              onPressed:() async{
              //画面遷移のコメント
               final result = await Navigator.push(context,
                MaterialPageRoute(builder: (context) => NextPage('meie'))
                );
               text = result;
                print(result);
             }

    ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
      ),
    );

  }
}
