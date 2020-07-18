import 'package:flutter/material.dart';
import 'package:store/ui/screens/products.dart';


class CategoryCard extends StatelessWidget{
  CategoryCard({this.id, this.imageUrl, this.categoryName, this.quantity});

  final String imageUrl;
  final String categoryName;
  final String quantity;
  final String id;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
//        Navigator.pushNamed(context, '/products', arguments: {'category': categoryName});
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(categoryName: categoryName,)));
      },
      child: Container(
        height: 250,
        width: double.infinity,
        child: Card(
          elevation: 2.0,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                right: 0.0,
                bottom: 80,
                child: Container(
                  width: double.infinity,
                  height: 120,
                  child: Image.asset(
                    imageUrl,
                    width: double.infinity,
                    scale: 2.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 10,
                right: 10,
                child: Text(
                  categoryName,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    color: Colors.purple
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 10,
                child: Text(
                    '($quantity)'
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}