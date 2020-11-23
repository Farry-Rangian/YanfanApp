import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_details_picture;
  final product_details_name;
  final product_details_price;
  final product_details_old_price;
  final product_details_picture1;
  final product_details_name1;
  final product_details_price1;
  final product_details_old_price1;
  final product_details_picture2;
  final product_details_name2;
  final product_details_price2;
  final product_details_old_price2;

  ProductDetails({
    this.product_details_picture,
    this.product_details_name,
    this.product_details_price,
    this.product_details_old_price,
    this.product_details_picture1,
    this.product_details_name1,
    this.product_details_price1,
    this.product_details_old_price1,
    this.product_details_picture2,
    this.product_details_name2,
    this.product_details_price2,
    this.product_details_old_price2,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.lightBlueAccent,
        title: Text('YANFAN'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: InkWell(
              onTap: (){},
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(widget.product_details_name, style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(widget.product_details_price, style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800, fontSize: 13),
                      ),
                      subtitle: Text(widget.product_details_old_price, style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.w800, fontSize: 13 ,decoration
                          :TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(widget.product_details_picture,
                    fit: BoxFit.cover,)
              ),
            ),
          ),

          new Container(
            height: 300.0,
           child: InkWell(
             onTap: (){},
             child: GridTile(
                 footer: Container(
                   color: Colors.white70,
                   child: ListTile(
                     leading: Text(widget.product_details_name1, style: TextStyle(fontWeight: FontWeight.bold),
                     ),
                     title: Text(widget.product_details_price1, style: TextStyle(
                         color: Colors.red, fontWeight: FontWeight.w800, fontSize: 13),
                     ),
                     subtitle: Text(widget.product_details_old_price1, style: TextStyle(
                         color: Colors.black54, fontWeight: FontWeight.w800, fontSize: 13 ,decoration
                         :TextDecoration.lineThrough),
                     ),
                   ),
                 ),
                 child: Image.asset(widget.product_details_picture1,
                   fit: BoxFit.cover,)
             ),
           ),
          ),

          new Container(
            height: 300.0,
            child: InkWell(
              onTap: (){},
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(widget.product_details_name2, style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(widget.product_details_price2, style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800, fontSize: 13),
                      ),
                      subtitle: Text(widget.product_details_old_price2, style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.w800, fontSize: 13 ,decoration
                          :TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(widget.product_details_picture2,
                    fit: BoxFit.cover,)
              ),
            ),
          ),
        ],
      ),
    );
  }
}