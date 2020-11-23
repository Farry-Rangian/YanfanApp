import 'package:flutter/material.dart';
import 'package:yanfan/pages/category_product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
            prod_name: 'Sensi',
            prod_old_price: 'Rp. 12,000',
            prod_price: 'Rp. 20,000',
            image_prod1: 'images/product/mask2.png',
            prod_name1: 'Mask KN95',
            prod_old_price1: 'Rp. 10,000',
            prod_price1: 'Rp. 3,000',
            image_prod2: 'images/product/mask3.png',
            prod_name2: 'Mask Evo',
            prod_old_price2: 'Rp. 15,000',
            prod_price2: 'Rp. 12,000',
          ),

          Category(
            image_location: 'images/Logo/apd.png',
            image_caption: 'APD',
            image_prod: 'images/product/apd1.png',
            prod_name: 'Hazmat',
            prod_old_price: 'Rp. 120,000',
            prod_price: 'Rp. 99,000',
            image_prod1: 'images/product/apd2.png',
            prod_name1: 'Cozmeed',
            prod_old_price1: 'Rp. 160,000',
            prod_price1: 'Rp. 140,000',
            image_prod2: 'images/product/apd3.png',
            prod_name2: 'Tyfek',
            prod_old_price2: 'Rp. 350,000',
            prod_price2: 'Rp. 322,000',
          ),

          Category(
            image_location: 'images/Logo/fs.png',
            image_caption: 'Face Shield',
            image_prod: 'images/product/fs1.png',
            prod_name: 'Face Shield1',
            prod_old_price: 'Rp. 20,000',
            prod_price: 'Rp. 15,000',
            image_prod1: 'images/product/fs2.png',
            prod_name1: 'Face Shield 2',
            prod_old_price1: 'Rp. 20,000',
            prod_price1: 'Rp. 16,000',
            image_prod2: 'images/product/fs3.png',
            prod_name2: 'Face Shield 3',
            prod_old_price2: 'Rp. 20,000',
            prod_price2: 'Rp. 16,000',
          ),

          Category(
            image_location: 'images/Logo/glove.png',
            image_caption: 'glove',
            image_prod: 'images/product/g1.png',
            prod_name: 'Sensi Latex',
            prod_old_price: 'Rp. 90,000',
            prod_price: 'Rp. 78,900',
            image_prod1: 'images/product/g2.png',
            prod_name1: 'Nitrile',
            prod_old_price1: 'Rp. 230,000',
            prod_price1: 'Rp. 205,500',
            image_prod2: 'images/product/g3.png',
            prod_name2: 'Surgi Care',
            prod_old_price2: 'Rp. 230,000',
            prod_price2: 'Rp. 205,500',
          ),

          Category(
            image_location: 'images/Logo/hand.png',
            image_caption: 'Sanitizer',
            image_prod: 'images/product/hs1.png',
            prod_name: 'Antis',
            prod_old_price: 'Rp. 15,000',
            prod_price: 'Rp. 13,000',
            image_prod1: 'images/product/hs2.png',
            prod_name1: 'Mandom',
            prod_old_price1: 'Rp. 15,000',
            prod_price1: 'Rp. 11,500',
            image_prod2: 'images/product/hs3.png',
            prod_name2: 'Nuvo',
            prod_old_price2: 'Rp. 10,000',
            prod_price2: 'Rp. 5,500',
          ),

          Category(
            image_location: 'images/Logo/wast.png',
            image_caption: 'Wastafel',
            image_prod: 'images/product/tct1.png',
            prod_name: 'Wastafel',
            prod_old_price: 'Rp. 350,000',
            prod_price: 'Rp. 300,000',
            image_prod1: 'images/product/tct2.png',
            prod_name1: 'Dafacart',
            prod_old_price1: 'Rp. 300,000',
            prod_price1: 'Rp. 250,000',
            image_prod2: 'images/product/tct3.png',
            prod_name2: 'GM',
            prod_old_price2: 'Rp. 350,000',
            prod_price2: 'Rp. 300,000',
          ),

          Category(
            image_location: 'images/Logo/rapid.png',
            image_caption: 'Rapid',
            image_prod: 'images/product/siloam.png',
            prod_name: 'RS Siloam',
            prod_old_price: 'Rp 249.000',
            prod_price: 'Rp 149.000',
            image_prod1: 'images/product/prodia.png',
            prod_name1: 'RS Prodia',
            prod_old_price1: 'Rp 700.000',
            prod_price1: 'Rp 590.000',
            image_prod2: 'images/product/siloam.png',
            prod_name2: 'RS.Siloam',
            prod_old_price2: 'Rp 249.000',
            prod_price2: 'Rp 149.000',

          ),

          Category(
            image_location: 'images/Logo/swab.png',
            image_caption: 'Swab',
            image_prod: 'images/product/siloam.png',
            prod_name: 'RS.Siloam',
            prod_old_price: 'Rp 2.800.000',
            prod_price: 'Rp 900.000',
            image_prod1: 'images/product/prodia.png',
            prod_name1: 'RS.Prodia',
            prod_old_price1: 'Rp. 3.000.000',
            prod_price1: 'Rp 2.500.000',
            image_prod2: 'images/product/siloam.png',
            prod_name2: 'RS.Siloam',
            prod_old_price2: 'Rp 2.800.000',
            prod_price2: 'Rp 900.000',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();
  FirebaseFirestore db = FirebaseFirestore.instance;

  final String image_location;
  final String image_caption;
  final String image_prod;
  final String prod_name;
  final String prod_price;
  final String prod_old_price;
  final String image_prod1;
  final String prod_name1;
  final String prod_price1;
  final String prod_old_price1;
  final String image_prod2;
  final String prod_name2;
  final String prod_price2;
  final String prod_old_price2;


  Category({
    this.image_caption,
    this.image_location,
    this.image_prod,
    this.prod_name,
    this.prod_price,
    this.prod_old_price,
    this.image_prod1,
    this.prod_name1,
    this.prod_price1,
    this.prod_old_price1,
    this.image_prod2,
    this.prod_name2,
    this.prod_price2,
    this.prod_old_price2,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('product').orderBy('name').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          return Padding(padding: const EdgeInsets.all(2.0),
            child: InkWell(onTap: ()=>
                Navigator.of(context).push(new  MaterialPageRoute(
                  //here we are passing the values of the product details page
                    builder: (context) => new ProductDetails(
                      product_details_picture: image_prod,
                      product_details_name: prod_name,
                      product_details_price: prod_price,
                      product_details_old_price: prod_old_price,
                      product_details_picture1: image_prod1,
                      product_details_name1: prod_name1,
                      product_details_price1: prod_price1,
                      product_details_old_price1: prod_old_price1,
                      product_details_picture2: image_prod2,
                      product_details_name2: prod_name2,
                      product_details_price2: prod_price2,
                      product_details_old_price2: prod_old_price2,
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
    );

  }
}