
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('遷移先'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Center(
            child: RaisedButton(
              child: Text(name),
              onPressed: (){
                Navigator.pop(context,'ヤッホー');
             },
            ),

          ),
        ],
      ),

    );

  }

}