import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own import
import 'package:yanfan/components/horizontal_listview.dart';
import 'package:yanfan/components/products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height:200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/m1.jpeg'),
          AssetImage('images/a1.jpg'),
          AssetImage('images/a2.jpg'),
          AssetImage('images/h1.jpg'),
          AssetImage('images/h2.jpg'),
          AssetImage('images/f1.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );
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

      drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              //          header
              new UserAccountsDrawerHeader(
                accountName: Text('Farry Rangian'),
                accountEmail: Text('christorangian@gmail.com'),
                currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: Icon(Icons.person, color: Colors.white),
                    )
                ),
                decoration: new BoxDecoration(
                    color: Colors.lightBlueAccent
                ),
              ),

//               body

              InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Home Page'),
                    leading: Icon(Icons.home),
                  )
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('My Account'),
                    leading: Icon(Icons.person),
                  )
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('My Order'),
                    leading: Icon(Icons.shopping_basket),
                  )
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Categories'),
                    leading: Icon(Icons.dashboard),
                  )
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Favorites'),
                    leading: Icon(Icons.favorite),
                  )
              ),

              Divider(),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Settings'),
                    leading: Icon(Icons.settings, color: Colors.blue),
                  )
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('About'),
                    leading: Icon(Icons.help, color: Colors.red),
                  )
              ),

            ],
          )
      ),

      body: new ListView(
        children: <Widget>[
          //image caousel begins here
          image_carousel,

          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),),

          //Horizontal List View begins here
          HorizontalList(),

          //gridview
          Container(
            height: 320.0,
            child: Product(),
          )

        ],
      ),
    );
  }
}