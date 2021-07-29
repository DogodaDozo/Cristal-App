import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final Text? itemName;

  ItemDetails({this.itemName});

  @override
  State<StatefulWidget> createState() {
    return _ItemDetailsState();
  }
}

class _ItemDetailsState extends State<ItemDetails> {
  Text _itemName = Text('');

  @override
  void initState() {
    _itemName = widget.itemName!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/fond_sans_logo.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Details'),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Flexible(
                    child: Image.asset(
                      'assets/food.jpg',
                      width: 200.0,
                    ),
                  ),
                  SizedBox(width: 30.0),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _itemName,
                        SizedBox(height: 15.0),
                        Text('Distance en km'),
                      ]),
                ],
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Adresse'),
                  SizedBox(width: 30.0),
                  ElevatedButton(
                    child: Text(
                      "Lancer l'itinéraire",
                      style: TextStyle(
                        color: Colors.orange,
                        // fontSize: 18.0,
                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
