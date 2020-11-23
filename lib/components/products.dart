import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yanfan/pages/product_details.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}
class _ProductState extends State<Product> {
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();
  FirebaseFirestore db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('product').orderBy('name').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        return GridView.builder(
          itemCount: snapshot.data.docs.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (BuildContext, int index) {
            DocumentSnapshot document = snapshot.data.docs[index];
            DocumentSnapshot product = document;
            return Single_prod(
              prod_name: product.data()['name'],
              prod_picture:product.data()['image'],
              prod_old_price: product.data()['oldprice'],
              prod_price: product.data()['price'],
              prod_desc: product.data()['desc'],
              prod_trend1:product.data()['trend1'],
              prod_trend2:product.data()['trend2'],
            );
          },
        );
      },
    );
    
    }
  }

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final prod_desc;
  final prod_trend1;
  final prod_trend2;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
    this.prod_desc,
    this.prod_trend1,
    this.prod_trend2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: ()=>
                  Navigator.of(context).push(new  MaterialPageRoute(
                    //here we are passing the values of the product details page
                      builder: (context) => new ProductDetails(
                        product_details_name: prod_name,
                        product_details_new_price: prod_price,
                        product_details_old_price: prod_old_price,
                        product_details_picture: prod_picture,
                        product_details_desc: prod_desc,
                        product_details_trend1: prod_trend1,
                        product_details_trend2: prod_trend2,
                      ))),

              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text("$prod_price", style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800, fontSize: 13),
                      ),
                      subtitle: Text("$prod_old_price", style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.w800, fontSize: 13 ,decoration
                          :TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.network(prod_picture,
                    fit: BoxFit.cover,)
              ),
            ),
          ),)
    );
  }
}
