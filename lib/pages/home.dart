import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own import
import 'package:yanfan/components/horizontal_listview.dart';
import 'package:yanfan/components/products.dart';
import 'package:yanfan/sign_in.dart';
import 'package:yanfan/signout.dart';
import 'package:yanfan/pages/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height:250.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/q1.jpg'),
          AssetImage('images/q2.jpg'),
          AssetImage('images/q3.jpg'),
          AssetImage('images/11.jpg'),
          AssetImage('images/22.jpg'),
          AssetImage('images/sanitizer.jpeg'),
          AssetImage('images/cucitangan.jpeg'),
        ],
        autoplay: false,
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
          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return CloudFirestoreSearch();
                    },
                  ),
                );
              }),
        ],
      ),

      drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              //          header
              new UserAccountsDrawerHeader(
                accountName: Text(name),
                accountEmail: Text(email),
                currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                      backgroundImage: NetworkImage(
                        imageUrl,
                      ),
                      radius: 60,
                      backgroundColor: Colors.transparent,
                    ),
                ),
                decoration: new BoxDecoration(
                    color: Colors.lightBlueAccent
                ),
              ),

//               body

              // InkWell(
              //     onTap: (){},
              //     child: ListTile(
              //       title: Text('Home Page'),
              //       leading: Icon(Icons.home),
              //     )
              // ),

              InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return FirstScreen();
                          },
                        ),
                    );
                  },
                  child: ListTile(
                    title: Text('My Account'),
                    leading: Icon(Icons.person),
                  )
              ),

              // InkWell(
              //     onTap: (){},
              //     child: ListTile(
              //       title: Text('My Order'),
              //       leading: Icon(Icons.shopping_basket),
              //     )
              // ),

              // InkWell(
              //     onTap: (){},
              //     child: ListTile(
              //       title: Text('Categories'),
              //       leading: Icon(Icons.dashboard),
              //     )
              // ),

              // InkWell(
              //     onTap: (){},
              //     child: ListTile(
              //       title: Text('Favorites'),
              //       leading: Icon(Icons.favorite),
              //     )
              // ),

              Divider(),

              // InkWell(
              //     onTap: (){},
              //     child: ListTile(
              //       title: Text('Settings'),
              //       leading: Icon(Icons.settings, color: Colors.blue),
              //     )
              // ),
              //
              // InkWell(
              //     onTap: (){},
              //     child: ListTile(
              //       title: Text('About'),
              //       leading: Icon(Icons.help, color: Colors.red),
              //     )
              // ),

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
            height: 250.0,
            width: 250,
            child: Product(),
          )

        ],
      ),
    );
  }
}