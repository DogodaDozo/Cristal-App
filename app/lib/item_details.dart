import 'package:flutter/material.dart';

import './image_gallery.dart';

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
  // Image _big = Image.asset('assets/food.jpg', width: 300.0);
  // Image _firstLittle = Image.asset('assets/food2.jpg', width: 80.0);
  // Image _secondLittle = Image.asset('assets/food.jpg', width: 80.0);
  // Image _thirdLittle = Image.asset('assets/food2.jpg', width: 80.0);
  Image _big = Image.asset('assets/food.jpg', width: 200.0);
  Image _firstLittle = Image.asset('assets/food2.jpg', width: 200.0);
  Image _secondLittle = Image.asset('assets/food.jpg', width: 200.0);
  Image _thirdLittle = Image.asset('assets/food2.jpg', width: 200.0);
  SizedBox space = SizedBox(width: 20.0);
  // AssetImage _big = AssetImage('assets/food.jpg');
  // AssetImage _firstLittle = AssetImage('assets/food2.jpg');
  // AssetImage _secondLittle = AssetImage('assets/food.jpg');
  // AssetImage _thirdLittle = AssetImage('assets/food2.jpg');

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
          backgroundColor: Colors.black,
          title: Text('Details'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Row(
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
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Options du lounge:'),
                    Text('- Plat'),
                    Text('- Goût'),
                  ],
                ),
                SizedBox(width: 30.0),
                ElevatedButton(
                  child: Text(
                    "Recommander l'établissement",
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
            ),
            SizedBox(height: 20.0),
            Text('Photos :'),
            Flexible(
              child: Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                        child: _big,
                        onTap: () {
                          print('big');
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  ImageGallery(_big));
                        }),
                    space,
                    GestureDetector(
                      child: _firstLittle,
                      onTap: () {
                        print('first');
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                ImageGallery(_firstLittle));
                      },
                    ),
                    space,
                    GestureDetector(
                      child: _secondLittle,
                      onTap: () {
                        print('second');
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                ImageGallery(_secondLittle));
                      },
                    ),
                    space,
                    GestureDetector(
                      child: _thirdLittle,
                      onTap: () {
                        print('third');
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                ImageGallery(_thirdLittle));
                      },
                    ),
                  ],
                ),
              ),
            ),
            // _big,
            // // Image.asset(
            // //   'assets/food.jpg',
            // //   width: 300.0,
            // // ),
            // SizedBox(height: 15.0),
            // // ImageGallery(),
            // Flexible(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       GestureDetector(
            //           child:
            //               _firstLittle, //Image.asset('assets/food2.jpg', width: 80.0),
            //           onTap: () {
            //             setState(() {
            //               print('first');
            //               // _firstLittle = _big;
            //               _big = Image.asset('assets/food2.jpg', width: 300.0);
            //               _firstLittle =
            //                   Image.asset('assets/food.jpg', width: 80.0);
            //               print(_firstLittle.image);
            //             });
            //           }),
            //       SizedBox(width: 20.0),
            //       _secondLittle,
            //       // Image.asset('assets/food.jpg', width: 80.0),
            //       SizedBox(width: 20.0),
            //       _thirdLittle,
            //       // Image.asset('assets/food2.jpg', width: 80.0)
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
