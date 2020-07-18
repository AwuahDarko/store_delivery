import 'package:flutter/material.dart';
import 'package:store/ui/screens/checkout.dart';

import 'category.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> originalList;
  Map<int, bool> originalDic;
  List<Widget> listScreens;
  List<int> listScreensIndex;

  int tabIndex = 0;
  @override
  void initState() {
    super.initState();
    originalList = [
     CategoryScreen(),
      CheckoutScreen()
    ];
    originalDic = {0: true, 1: false, 2: false};
    listScreens = [originalList.first];
    listScreensIndex = [0];
  }


  void _selectedTab(int index) {
    if (originalDic[index] == false) {
      listScreensIndex.add(index);
      originalDic[index] = true;
      listScreensIndex.sort();
      listScreens = listScreensIndex.map((index) {
        return originalList[index];
      }).toList();
    }

    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: Scaffold(
        body: IndexedStack(index: tabIndex, children: listScreens),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabIndex,
            onTap: _selectedTab,
            items: [
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.apps, color: Colors.purple,),
                icon: Icon(Icons.apps,),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.shopping_basket, color: Colors.purple,),
                icon: Icon(Icons.shopping_basket),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.account_box,  color: Colors.purple,),
                icon: Icon(Icons.account_box,),
                title: Text(''),
              ),
            ]),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}