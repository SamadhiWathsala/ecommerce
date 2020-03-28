import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/accessories.png',
            imgae_caption: 'Accessories',
          ),
          Category(
            image_location: 'images/cats/dress.png',
            imgae_caption: 'Dress',
          ),
          Category(
            image_location: 'images/cats/formal.png',
            imgae_caption: 'Forml',
          ),
          Category(
            image_location: 'images/cats/informal.png',
            imgae_caption: 'Informl',
          ),
          Category(
            image_location: 'images/cats/jeans.png',
            imgae_caption: 'Jeans',
          ),
          Category(
            image_location: 'images/cats/shoe.png',
            imgae_caption: 'Shoes',
          ),
          Category(
            image_location: 'images/cats/tshirt.png',
            imgae_caption: 'T-shirt',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {

  final String image_location;
  final String imgae_caption;

  Category({
    this.image_location,
    this.imgae_caption,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,width: 120.0,height: 80.0,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(imgae_caption,style: TextStyle(fontSize: 12.0),),
            ),
          ),
        ),
      ),
    );
  }
}
