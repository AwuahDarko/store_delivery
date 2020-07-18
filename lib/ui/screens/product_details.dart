import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        left: true,
        right: true,
        bottom: true,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: Carousel(
                    boxFit: BoxFit.cover,
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    dotSize: 6.0,
                    dotIncreasedColor: Color(0xFFFFFFFF),
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 7.0,
                    images: [
//                      NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
//                      NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                      ExactAssetImage("assets/images/carrot.jpg"),
                      ExactAssetImage("assets/images/cauliflower.jpg"),
                      ExactAssetImage("assets/images/pepper.jpg"),
                      ExactAssetImage("assets/images/spinach.jpg"),
                      ExactAssetImage("assets/images/cabbage.jpg"),
                      ExactAssetImage("assets/images/tomato.jpg"),
                      ExactAssetImage("assets/images/onion.jpg"),
                      ExactAssetImage("assets/images/broccoli.jpg"),
                    ],
                  ),
                ),
              ),
              Positioned(
                top:  MediaQuery.of(context).size.height * 0.4,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.only(top: 1.0, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Beef Burger Regular',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '12.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple
                            ),
                          ),
                          Text(
                            '/piece',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 20.0
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      Text(
                        '~ 150gr / piece',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 16.0
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Text(
                        'Description',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Text(
                        'Spinach is a superfood. It is loaded with tons of '
                            'nutrients in a low-calorie package. Dark, '
                            'leafy greens like spinach are important for skin,'
                            ' hair, and bone health. They also provide protein,'
                            ' iron, vitamins, and minerals. The possible health '
                            'benefits of consuming spinach include improving '
                            'blood glucose control in people with diabetes, '
                            'lowering the risk of cancer, and improving bone health.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.purple
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50.0,
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
                            width:  MediaQuery.of(context).size.width * 0.65,
                            height: 50.0,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.add_shopping_cart,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 10.0,),
                                  Text(
                                    'ADD TO CART',
                                    style: TextStyle(
                                      color: Colors.white,

                                    ),
                                  )
                                ],
                              ),
                              color: Colors.green[400],
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
        ),
      )
    );
  }
}
