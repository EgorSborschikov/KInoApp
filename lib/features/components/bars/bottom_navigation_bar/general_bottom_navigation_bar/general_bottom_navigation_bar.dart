import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../../routes/app_router.gr.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Films'),
    Text('Properties'),
    Text('Theatres'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        context.router.push(HomeRoute());
        break;
      case 1:
        context.router.push(FilmsRoute());
        break;
      case 2:
        context.router.push(PropertiesRoute());
        break;
      case 3:
        context.router.push(TheatresRoute());
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.film),
            label: 'Films',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.placemark),
            label: 'Theatres',
          ),
                    BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        activeColor: CupertinoColors.systemYellow,
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return _widgetOptions.elementAt(index);
          },
        );
      },
    );
  }
}
