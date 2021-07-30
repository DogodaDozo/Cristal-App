import 'package:flutter/material.dart';

import './list_manager.dart';

class SearchScreen extends StatelessWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fond.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(child: Text('MOOD.')),
            automaticallyImplyLeading: false,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: TextField(
                        controller: textController,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          // fillColor: Colors.white,
                          hintText: 'Search',
                          contentPadding:
                              const EdgeInsets.only(left: 20.0, right: 10.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    FloatingActionButton(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.search,
                        size: 35.0,
                        color: Colors.orange,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              ConstrainedBox(
                constraints:
                    BoxConstraints.tightFor(width: 120.0, height: 50.0),
                child: ElevatedButton(
                  child: Text(
                    'Party',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListManager(
                          listName: 'Party',
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ConstrainedBox(
                constraints:
                    BoxConstraints.tightFor(width: 120.0, height: 50.0),
                child: ElevatedButton(
                  child: Text(
                    'Love',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListManager(
                          listName: 'Love',
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ConstrainedBox(
                constraints:
                    BoxConstraints.tightFor(width: 120.0, height: 50.0),
                child: ElevatedButton(
                  child: Text(
                    'Chill',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListManager(
                          listName: 'Chill',
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      child: Icon(
                        Icons.home,
                        size: 35.0,
                        color: Colors.orange,
                      ),
                      backgroundColor: Colors.white,
                      onPressed: () {},
                    ),
                    SizedBox(width: 50.0),
                    FloatingActionButton(
                      child: Icon(
                        Icons.favorite,
                        size: 35.0,
                        color: Colors.orange,
                      ),
                      backgroundColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListManager(
                              listName: 'Coups de coeur',
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
