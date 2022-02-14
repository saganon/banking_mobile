import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:banking_mobile/constant/icons_constant.dart';
import 'package:banking_mobile/screen/dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedTabBottom = 0;

  static final _bottomNavigationTab = [
    {
      'id': 0,
      'assetActive': IconsConstant.homeActive,
      'assetInactive': IconsConstant.homeInactive,
      'width': 28.w,
      'height': 28.h,
    },
    {
      'id': 1,
      'assetActive': IconsConstant.statisticsActive,
      'assetInactive': IconsConstant.statisticsInactive,
      'width': 28.w,
      'height': 28.h,
    },
    {
      'id': 2,
      'assetActive': IconsConstant.add,
      'assetInactive': IconsConstant.close,
      'width': 60.w,
      'height': 36.h,
    },
    {
      'id': 3,
      'assetActive': IconsConstant.cardActive,
      'assetInactive': IconsConstant.cardInactive,
      'width': 28.w,
      'height': 28.h,
    },
    {
      'id': 4,
      'assetActive': IconsConstant.profileActive,
      'assetInactive': IconsConstant.profileInactive,
      'width': 28.w,
      'height': 28.h,
    }
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedTabBottom = index;
    });
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          DashboardScreen(),
          Container(),
          Container(),
          Container(),
          Container(),
        ].elementAt(index);
      },
    };
  }

  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  Widget _buildOffstageNavigator(int index) {
    final routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedTabBottom != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name](context),
          );
        },
      ),
    );
  }

  Widget renderBottomNavigationItem(Map item) {
    return Container(
      width: item['width'],
      child: InkWell(
        onTap: () => _onItemTapped(item['id']),
        child: Center(
          child: Image.asset(
            _selectedTabBottom == item['id']
                ? item['assetActive']
                : item['assetInactive'],
            width: item['width'],
            height: item['height'],
          ),
        ),
      ),
    );
  }

  Widget renderBottomNavigator() {
    return Container(
      height: 90.h,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        border: Border.all(
          color: Color.fromRGBO(243, 245, 250, 1),
        ),
      ),
      child: ClipRRect(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            renderBottomNavigationItem(_bottomNavigationTab[0]),
            renderBottomNavigationItem(_bottomNavigationTab[1]),
            renderBottomNavigationItem(_bottomNavigationTab[2]),
            renderBottomNavigationItem(_bottomNavigationTab[3]),
            renderBottomNavigationItem(_bottomNavigationTab[4]),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(255, 255, 255, 1),
      child: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          body: Stack(
            children: [
              _buildOffstageNavigator(0),
              _buildOffstageNavigator(1),
              _buildOffstageNavigator(2),
              _buildOffstageNavigator(3),
              _buildOffstageNavigator(4),
            ],
          ),
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: renderBottomNavigator(),
        ),
      ),
    );
  }
}
