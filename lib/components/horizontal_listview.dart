import 'package:flutter/material.dart';
import 'package:yanfan/pages/category_product.dart';

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
            image_prod: 'images/product/mask1.png',
            image_prod1: 'images/product/mask2.png',
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
  final String image_prod;
  final String image_prod1;

  Category({
    this.image_caption,
    this.image_location,
    this.image_prod,
    this.image_prod1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: ()=>
          Navigator.of(context).push(new  MaterialPageRoute(
            //here we are passing the values of the product details page
              builder: (context) => new ProductDetails(
                product_details_picture: image_prod,
                product_details_picture1: image_prod1,
              ))),
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