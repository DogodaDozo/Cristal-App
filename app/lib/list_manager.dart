import 'package:flutter/material.dart';

import './list_item.dart';

class ListManager extends StatefulWidget {
  final String listName;

  ListManager({this.listName = ''});

  @override
  State<StatefulWidget> createState() {
    return _ListManagerState();
  }
}

class _ListManagerState extends State<ListManager> {
  String _listName = '';
  List<String> _itemList = [];

  void fillItemList() {
    for (int i = 1; i < 16; i++) {
      if (i % 5 == 0) {
        _itemList.add('Publicité');
      } else {
        _itemList.add('Lounge $i');
      }
    }
  }

  @override
  void initState() {
    _listName = widget.listName;
    fillItemList();
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
          backgroundColor: Colors.black,
          title: Text(_listName),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: ListItem(_itemList),
            ),
          ],
        ),
      ),
    );
  }
}
