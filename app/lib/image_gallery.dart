import 'package:flutter/material.dart';

class ImageGallery extends StatelessWidget {
  final Image _image;

  ImageGallery(this._image);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // title: Text('Popup'),
      // content: _image,
      actions: [
        // FloatingActionButton(
        //   backgroundColor: Colors.white,
        //   child: Icon(Icons.close, color: Colors.orange,),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // )
        Positioned(
          right: 0.0,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 14.0,
                backgroundColor: Colors.white,
                child: Icon(Icons.close, color: Colors.orange),
              ),
            ),
          ),
        ),
      ],
      content: _image,
    );
  }
}
