import 'package:flutter/material.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';
import 'package:store/ui/screens/product_details.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String price;
  final String name;
  final String id;
  final String categoryId;
  final String description;

  ProductCard(
      {this.imageUrl,
      this.name,
      this.price,
      this.id,
      this.description,
      this.categoryId});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30.0),
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      width: double.infinity,
      height: 150,
      color: Colors.transparent,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            child: GestureDetector(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.45,
                height: 150,
                child: GFAvatar(
                    backgroundImage: Image(image: AssetImage(imageUrl)).image,
                    backgroundColor: Colors.purpleAccent[100],
                    shape: GFAvatarShape
                        .standard),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetails()));
              },
            ),
          ),
          Positioned(
            top: 5,
            right: 0,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductDetails())),
                    child: Text(
                      name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                          fontSize: 18.0),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      children: <Widget>[
                        Text(
                          'GH\u20b5 $price',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                        ),
                        Text(
                          '/piece',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.purple),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 70.0,
                        height: 40.0,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.grey[300])),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.purple,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: 70.0,
                        height: 40.0,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                          color: Colors.red,
                          onPressed: () {},
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
