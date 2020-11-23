import 'package:flutter/material.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picture;
  final product_details_desc;
  final product_details_trend1;
  final product_details_trend2;

  ProductDetails({
    this.product_details_name,
    this.product_details_old_price,
    this.product_details_new_price,
    this.product_details_picture,
    this.product_details_desc,
    this.product_details_trend1,
    this.product_details_trend2
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
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.network(widget.product_details_picture),
              ),
            footer: new Container(
              color: Colors.white,
              child: ListTile(
                leading: new Text(widget.product_details_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                title: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("${widget.product_details_old_price}",
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                    ),

                    Expanded(
                        child: new Text("${widget.product_details_new_price}",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),)
                    ),
                  ],
                ),
              ),
            ),
            ),
          ),

          Row(
            children: <Widget>[
//         ====== the size button ======
              Expanded(child: MaterialButton(
                onPressed: () {
                  FlutterOpenWhatsapp.sendSingleMessage("6289698576314","Pesan "+ widget.product_details_name);
                },
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("Order Now"),
              ),
              ),
            ],
          ),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("${widget.product_details_desc}"),
          ),
          new ListTile(
            title: new Text("Trend Harga"),
            subtitle: new Text("Harga awal pandemi = "+"${widget.product_details_trend1}"),
          ),
          ListTile(
            subtitle: new Text("Harga sekarang = "+"${widget.product_details_trend2}"),
          )
        ],
      ),
    );
  }
}