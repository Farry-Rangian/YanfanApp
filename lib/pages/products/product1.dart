import 'package:flutter/material.dart';

class ProducDetails1 extends StatefulWidget {
  final product_name;
  final product_price;
  final product_old_price;
  final product_picture;
  final product_desc;
  final product_trend1;
  final product_trend2;

  ProducDetails1({
    this.product_name,
    this.product_old_price,
    this.product_price,
    this.product_picture,
    this.product_desc,
    this.product_trend1,
    this.product_trend2
  });

  @override
  _ProducDetails1State createState() => _ProducDetails1State();
}

class _ProducDetails1State extends State<ProducDetails1> {
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
                child: Image.asset(widget.product_picture),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(widget.product_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("${widget.product_old_price}",
                            style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                      ),

                      Expanded(
                          child: new Text("${widget.product_price}",
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
            subtitle: new Text("${widget.product_desc}"),
          ),
          new ListTile(
            title: new Text("Trend Harga"),
            subtitle: new Text("Harga awal pandemi = "+"${widget.product_trend1}"),
          ),
          ListTile(
            subtitle: new Text("Harga sekarang = "+"${widget.product_trend2}"),
          )
        ],
      ),
    );
  }
}