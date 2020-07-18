import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:xlive_switch/xlive_switch.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CheckoutScreenState();
}

class CheckoutScreenState extends State<CheckoutScreen> {
  bool _nonContact = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          padding: const EdgeInsets.all(0.0),
          icon: Icon(Icons.arrow_back_ios, size: 16.0, color: Colors.purple),
          onPressed: (){},
        ),
        title: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Center(
            child: Text(
              'Checkout',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.purple),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Payment Method',
                        style: TextStyle(color: Colors.purple, fontSize: 20),
                      ),
                      FlatButton(
                        child: Text(
                          'CHANGE',
                          style: TextStyle(
                              color: Colors.purpleAccent, fontSize: 17),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.credit_card,
                        color: Colors.purple,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        '**** **** **** 4747',
                        style: TextStyle(color: Colors.purple),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Delivery address',
                        style: TextStyle(color: Colors.purple, fontSize: 20),
                      ),
                      FlatButton(
                        child: Text(
                          'CHANGE',
                          style: TextStyle(
                              color: Colors.purpleAccent, fontSize: 17),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        color: Colors.purple,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Darko Awuah Jackson',
                            style: TextStyle(color: Colors.purple[300]),
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            '7th Street road city',
                            style: TextStyle(color: Colors.purple[300]),
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            'Achimota',
                            style: TextStyle(color: Colors.purple[300]),
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            'Accra',
                            style: TextStyle(color: Colors.purple[300]),
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            'Ghana',
                            style: TextStyle(color: Colors.purple[300]),
                          ),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Delivery options',
                        style: TextStyle(color: Colors.purple, fontSize: 20),
                      ),
                      FlatButton(
                        child: Text(
                          'CHANGE',
                          style: TextStyle(
                              color: Colors.purpleAccent, fontSize: 17),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.directions_run, size: 28.0, color: Colors.purple,),
                        title: Text("I'll pick it up myself"),
                      ),
                      ListTile(
                        leading: Icon(Icons.directions_bike, size: 28.0, color: Colors.purpleAccent),
                        title: Text(
                            "By Courier",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purpleAccent
                          ),
                        ),
                        trailing: Icon(Icons.check, size: 28.0, color: Colors.purpleAccent,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            ListTile(
              title: Text(
                'Non-contact-delivery',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.purple
                ),
              ),
              trailing: XlivSwitch(
                activeColor: Colors.purpleAccent[100],
                unActiveColor: Colors.grey,
                value: _nonContact,
                onChanged: (value) {
                  _nonContact = value;
                  setState(() {});
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
