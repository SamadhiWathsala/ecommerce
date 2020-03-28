import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
 import 'package:ecommerce/components/horizontal_listview.dart';
 import 'package:ecommerce/components/products.dart';
 import 'package:ecommerce/pages/cart.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget image_carousel = Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/IMG_1266.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/w1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg')
      ],
      autoplay: false,
      // animationCurve: Curves.fastOutSlowIn,
      // animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text("FashApp"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,color: Colors.white),onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart,color: Colors.white),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          //header
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Samadhi Wathsala'),
              accountEmail: Text('samadhiwathsala96@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),
            //body
            InkWell(
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.red),
                onTap: (){

                },
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.red),
                onTap: (){

                },
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('My Order'),
                leading: Icon(Icons.shopping_basket,color: Colors.red),
                onTap: (){

                },
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart,color: Colors.red),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                },
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite,color: Colors.red),
                onTap: (){

                },
              ),
            ),

            Divider(),

            InkWell(
              child: ListTile(
                title: Text('Settingss'),
                leading: Icon(Icons.settings),
                onTap: (){

                },
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.blue),
                onTap: (){

                },
              ),
            ),

          ],
        ),
      ),

      body: ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,

          //padding widget
          Padding(
            padding: const EdgeInsets.all(8.0 ),
            child: Text('Categories'),
          ),

          //Horizontal list view begin here
          HorizontalList(),

          //padding widget
          Padding(
            padding: const EdgeInsets.all(20.0 ),
            child: Text('Recent Product'),
          ),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
