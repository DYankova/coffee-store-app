
import 'package:coffee_store_app/model/DrinksListModel.dart';
import 'package:coffee_store_app/widget/DrinksCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class DrinksList extends StatelessWidget{

  @override
  Widget build(BuildContext scaffoldContext) {
    return ScopedModelDescendant<DrinksListModel>(
      builder: (context, _, model) {
        return Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(6.0),
            children: model.drinkType.map((drinkType){
              return GestureDetector(
                onTap: (){
                  showDialog(
                    context: scaffoldContext,
                    builder: (BuildContext dialogContext){
                    return AlertDialog(
                      title: Text(
                      'Order',
                      ),
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            drinkType.image,
                            height: 100.0,
                            width: 100.0,
                            fit: BoxFit.cover,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                drinkType.title,
                              ),
                              Text(
                                'Price: \$${drinkType.price}'
                              ),
                            ],
                          )
                        ],
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 18.0
                            ),
                          ),
                          onPressed: (){
                            Navigator.pop(dialogContext);
                          },
                        ),
                        FlatButton(
                          child: Text(
                            'Send',
                            style: TextStyle(
                                fontSize: 18.0
                            ),
                          ),
                          onPressed: (){
                            Navigator.pop(dialogContext);
                          },
                        )
                      ],
                     );
                  }
                );
                },
              child: DrinksCard(
                drinkType: drinkType,
              )
              );
            }).toList(),
          ),
        );
      },
    );

  }
}