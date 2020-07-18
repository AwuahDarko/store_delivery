import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:store/Resource/resource.dart';
import 'package:store/ui/widgets/category_card.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CategoryScreenState();
}

class CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
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
                  'Categories',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.purple
                  ),
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
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: FlatButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.search),
                        Text('Search')
                      ],
                    ),
                    onPressed: (){},
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 5,
                right: 5,
                bottom: 0,
                child: StaggeredGridView.extentBuilder(
                  maxCrossAxisExtent: 250,
//                  crossAxisCount: screenWidth >= 600 ? 4 : 2,
                  itemCount: AppData.allCategories.length,
                  itemBuilder: (BuildContext context, int index) => new CategoryCard(
                    id: AppData.allCategories[index].id,
                      categoryName: AppData.allCategories[index].name,
                    imageUrl: AppData.allCategories[index].imageUrl,
                    quantity: AppData.allCategories[index].quantity,
                  ),
                  staggeredTileBuilder: (int index) =>
                  screenWidth >= 600 ? StaggeredTile.count(1,  2) : StaggeredTile.fit(1),
                  mainAxisSpacing: 12.0,
                  crossAxisSpacing: 12.0,
                )
//                count(
//                  scrollDirection: Axis.vertical,
//                  crossAxisCount: 2,
//                  crossAxisSpacing: 12.0,
//                  mainAxisSpacing: 12.0,
//                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//                  children: AppData.allCategories.map((category) => CategoryCard(
//                    id: category.id,
//                      categoryName: category.name,
//                    imageUrl: category.imageUrl,
//                    quantity: category.quantity,
//                  )).toList(),
//                  staggeredTiles: AppData.allCategories
//                      .map((category) => StaggeredTile.fit(1))
//                      .toList(),
//                )
              )
            ],
          ),
        )
      ),
    );
  }
}

