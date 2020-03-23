import 'package:flutter/material.dart';
import 'package:coffee_store_app/model/DrinkType.dart';

List<DrinkType> coffeeTypes = <DrinkType>[
  DrinkType('Coffee', 'assets/img/coffee.jpg' , 4.20),
  DrinkType('Capuccino', 'assets/img/capuccino.jpg' , 5.20),
  DrinkType('Cacao', 'assets/img/cacao.jpg' , 2.20),
  DrinkType('Tea', 'assets/img/tea.jpeg' , 2.20),
];
List<DrinkType> juicesTypes = <DrinkType>[
  DrinkType('Juice', 'assets/img/juice.jpg' , 4.20),
  DrinkType('Cola', 'assets/img/cola.jpg' , 5.20),
  DrinkType('Lemonade', 'assets/img/lemonade.jpg' , 2.20),

];




class DrinksCard extends StatelessWidget {
  final DrinkType drinkType;

  const DrinksCard({Key key, this.drinkType});

@override
  Widget build(BuildContext context) {
   return Card(
     child: Center(
       child:  Stack(
         children: <Widget>[
           Image.asset(
             drinkType.image,
             height: double.infinity,
             width: double.infinity,
             fit: BoxFit.cover,

           ),
           Align(
             alignment: Alignment.topCenter,
            child: Padding(
             padding: const EdgeInsets.all(8.0),
               child: Text(
               drinkType.title,
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 24.0,
               ),
             ),
           ),
           ),
         ],
       ),
     ),
   );
    return Container();
  }
}