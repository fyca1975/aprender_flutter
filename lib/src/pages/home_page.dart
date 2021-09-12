

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
         title: Text('Componenetes '),
    ),
    body: _Lista(),
    );
  }

 Widget _Lista() {
   
    return ListView(
    children: _listaitems(),
  );
 
 }

  List<Widget> _listaitems() {

    return [
        ListTile( title: Text('Hola Mundo')  ),
        Divider(),

    ];

  }
}
