import 'package:flutter/material.dart';
import 'package:food_app/src/cart_screen.dart';
import 'package:food_app/src/home_screen.dart';
import 'package:food_app/src/my_account_screen.dart';
import 'package:food_app/src/search_screen.dart';

class Home extends StatefulWidget {

  Widget currentPage = HomeScreen();

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  initState() {
    super.initState();
    _selectTab(0);
  }

  void _selectTab(int tabItem) {
    setState(() {
         tabItem == 3 ? 1 : tabItem;
      switch (tabItem) {
        case 0:
          widget.currentPage =  HomeScreen();
          break;
        case 1:
          widget.currentPage =  SearchScreen();
          break;
        case 2:
          widget.currentPage = CartScreen();
          break;
        case 3:
          widget.currentPage =   MyAccountScreen();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('location'),
        actions: [
          IconButton(
            onPressed: (){},
            padding: EdgeInsets.only(right : 10.0),
              icon: Icon(Icons.account_circle , color: Colors.red, size: 40,))
        ],
      ),
      body: widget.currentPage,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        iconSize: 22,
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedIconTheme: IconThemeData(size: 28),
        unselectedItemColor: Theme.of(context).focusColor.withOpacity(1),
        currentIndex: 0,
        onTap: (int i) {
          print(i);
          this._selectTab(i);
        },
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
              title: Text('Search'),
              icon:   Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.shopping_cart),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.person),
            title: Text('Account'),
          ),
        ],
      ),
    );
  }
}
