import 'package:app/item_details.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final List<String> _itemsNames;

  ListItem(this._itemsNames);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _itemsNames
          .map(
            (elt) => Container(
              child: GestureDetector(
                child: Card(
                  child: elt == "Publicité"
                      ? Text(elt)
                      : Row(
                          children: [
                            Flexible(
                              child: Image.asset(
                                'assets/food.jpg',
                                width: 100.0,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Column(children: [
                              Text(elt),
                              Text('Tag'),
                            ]),
                            SizedBox(width: 40.0),
                            Column(
                              children: [Text(''), Text('Distance en km')],
                            ),
                          ],
                        ),
                ),
                onTap: () {
                  print(elt);
                  if (elt != 'Publicité') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ItemDetails(itemName: Text(elt))),
                    );
                  }
                },
              ),
            ),
          )
          .toList(),
    );
  }
}
