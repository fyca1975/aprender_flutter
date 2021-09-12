import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['uno','dos','tres','cuatro'];

  get blue => null;


 // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temporal !!!'),

      ),
      body: ListView(
        // children: _crearItems()
        children: _crearItemsCorta(),

      ),
    );
  } 

 List<Widget> _crearItems(){

   List<Widget> lista = <Widget>[];


   for (String opt in opciones) {
     
     final tempWidget = ListTile(
       title: Text( opt ),
     );
      lista..add(tempWidget)
           ..add(Divider(color: Colors.blueGrey, 
                         height: 40.5 ));
   }

   return lista;
 }

List<Widget> _crearItemsCorta(){

  // var widgets = opciones.map(( item )  esta parte va con el return de abajo (***) si no se utiliza la linea siguiente
  return opciones.map(( item ){

    return Column(
      children: [
        ListTile(
          title: Text(item + ' !!'),
          subtitle: Text('prueba de subt'),
          leading: Icon( Icons.elderly_sharp ),
          trailing: Icon ( Icons.keyboard_arrow_right_rounded),
          onTap: () {},

        ),
        Divider()
      ],
    );


  }).toList();

  // return widgets;

}

}