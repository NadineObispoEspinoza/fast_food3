import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fast_food/screens/login.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 249, 239),
      child: Column(
        mainAxisSize: MainAxisSize.max, 
        crossAxisAlignment: CrossAxisAlignment.start, 

        children: [
          Image(
            image: AssetImage('assets/images/balloon-shape.png'),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0), 
              child: Image(
                image: AssetImage('assets/images/FastFood-Logo.png'),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image(
                image: AssetImage('assets/images/online_groceries.png'),
              ),
            ),
          ),
          Center(
            child: Text(
              'El directorio de comida',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Center(
            child: Text(
              'Busca.Encuentra.Pide',
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 18.0,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Center(
            child: Text(
              'Recibe.Disfruta',
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 18.0,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        Center(
         child:Padding(
           padding: const EdgeInsets.fromLTRB(0.0,100.0,0.0,0.0),
           child: FlatButton(
        onPressed: (){
           Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
        },
        minWidth: 335.0,
        height: 60.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color:Colors.orange,
        child: Text(
               'INICIA AHORA',
               style: TextStyle( color: Colors.white,
               fontSize: 18.0,
               decoration: TextDecoration.none
               ),
        ),
       ),
         ),
       ),
        ],
      ),
    );
  }
}