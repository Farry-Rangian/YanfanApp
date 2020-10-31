import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/Logo/mask.png',
            image_caption: 'Masker',
          ),

          Category(
            image_location: 'images/Logo/apd.png',
            image_caption: 'APD',
          ),

          Category(
            image_location: 'images/Logo/fs.png',
            image_caption: 'Face Shield',
          ),

          Category(
            image_location: 'images/Logo/glove.png',
            image_caption: 'glove',
          ),

          Category(
            image_location: 'images/Logo/hand.png',
            image_caption: 'Sanitizer',
          ),

          Category(
            image_location: 'images/Logo/wast.png',
            image_caption: 'Wastafel',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_caption,
    this.image_location
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
              )
          ),
        ),
      ),);
  }
}