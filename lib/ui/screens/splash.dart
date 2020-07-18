import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/ui/screens/home.dart';
import 'package:store/ui/screens/products.dart';
import 'package:store/ui/widgets/bexier_one.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Colors.purpleAccent,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Positioned(
              top: -50,
              right: -50,
              child: BezierOne(),
            ),
            Positioned(
              top: 0,
              left: -50,
              child: BezierTwo(),
            ),
            Positioned(
              top: 100,
              right: 20,
              left: 20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
//                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        shape: BoxShape.circle),
                    child: Center(
                      child: Text(
                        'D',
                        style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.purpleAccent[200],
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Container(
                      child: Center(
                    child: Text(
                      'Foodi Diaries',
                      style: TextStyle(color: Colors.white, fontSize: 28.0),
                    ),
                  )),
                  Spacer(
                    flex: 3,
                  )
                ],
              ),
            ),
            Positioned(
              top: screenHeight * 0.35,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding:
                    const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: screenWidth,
                      height: 100,
                      child: Center(
                        child: CircleAvatar(
                          radius: 100.0,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.view_module,
                            size: 50.0,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: screenWidth,
                      child: Center(
                        child: Text(
                          "Non-Contact",
                          style:
                              TextStyle(fontSize: 28.0, color: Colors.purple),
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth,
                      child: Center(
                        child: Text(
                          "Deliveries",
                          style:
                              TextStyle(fontSize: 28.0, color: Colors.purple),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: screenWidth,
                      child: Center(
                        child: Text(
                            'When placing an order, select the'
                                ' option "Contactless delivery" and the courier'
                                ' will leave your order at the door',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.purple[300],
                            fontSize: 18.0

                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      width: screenWidth,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: FlatButton(
                        child: Text(
                          'ORDER NOW',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        color: Colors.green[400],
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(7.0)),
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    FlatButton(
                      child: Text('DISMISS'),
                      onPressed: (){
                        Navigator.pushNamed(context, '/home');
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
