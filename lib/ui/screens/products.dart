import 'package:flutter/material.dart';
import 'package:store/Resource/resource.dart';
import 'package:store/ui/widgets/product_card.dart';

class ProductScreen extends StatefulWidget {
  final String categoryName;

  ProductScreen({this.categoryName});

  @override
  State<StatefulWidget> createState() => ProductScreenState();
}

class ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> catName =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(
          top: true,
          bottom: true,
          left: true,
          right: true,
          child: Container(
            color: Colors.grey[100],
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.purple,
                        size: 17.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Text(
                    widget.categoryName == null
                        ? catName['category']
                        : widget.categoryName,
                    style: TextStyle(fontSize: 20.0, color: Colors.purple),
                  ),
                ),
                Positioned(
                  top: 85.0,
                  left: 20,
                  right: 20.0,
                  child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.grey[300]),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    width: MediaQuery.of(context).size.width,
                    child: FlatButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[Icon(Icons.search), Text('Search')],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Positioned(
                    top: 150,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: ListView.builder(
                        itemCount: AppData.productList.length,
                        cacheExtent: 1000.0,
                        itemExtent: 150,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemBuilder: (context, i) {
                          return ProductCard(
                            id: AppData.productList[i].id,
                            name: AppData.productList[i].name,
                            imageUrl: AppData.productList[i].imageUrl,
                            description: AppData.productList[i].description,
                            categoryId: AppData.productList[i].categoryId,
                            price: AppData.productList[i].price,
                          );
                        }))
              ],
            ),
          )),
    );
  }
}
/*
* semanticChildCount: AppData.productList.length,
                      children: AppData.productList
                          .map((product) => ProductCard(
                                id: product.id,
                                name: product.name,
                                imageUrl: product.imageUrl,
                                description: product.description,
                                categoryId: product.categoryId,
                                price: product.price,
                              ))
                          .toList(),
* */
