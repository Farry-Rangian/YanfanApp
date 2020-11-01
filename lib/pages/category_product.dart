import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_details_picture;
  final product_details_picture1;

  ProductDetails({

    this.product_details_picture,
    this.product_details_picture1,
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
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){}),
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
              // footer: new Container(
              //   color: Colors.white,
              //   child: ListTile(
              //     leading: new Text(widget.product_details_name,
              //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
              //     title: new Row(
              //       children: <Widget>[
              //         Expanded(
              //             child: new Text("${widget.product_details_old_price}",
              //               style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
              //         ),
              //
              //         Expanded(
              //             child: new Text("${widget.product_details_new_price}",
              //               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),)
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ),
          ),

          Row(
            children: <Widget>[
//         ====== the size button ======
              Expanded(child: MaterialButton(
                onPressed: () {},
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("Buy now"),
              ),
              ),

              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border, color: Colors.red,), onPressed: (){})
            ],
          ),
          new ListTile(
            title: new Text("Product details"),
            //subtitle: new Text("${widget.product_details_desc}"),
          ),
        ],
      ),
    );
  }
}