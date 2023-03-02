import 'package:bottom_navigation_example/navigation/navigators/chat_navigator.dart';
import 'package:bottom_navigation_example/navigation/navigators/music_navigator.dart';
import 'package:bottom_navigation_example/navigation/navigators/profile_navigator.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  static const _initialIndex = 1;
  int _currentIndex = _initialIndex;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    musicNavigatorKey,
    chatNavigatorKey,
    profileNavigatorKey,
  ];

  Future<bool> _systemBackButtonPressed() async {
    final navigatorState = _navigatorKeys[_currentIndex].currentState;
    if (navigatorState == null) {
      return true;
    } else if (navigatorState.canPop()) {
      return !await navigatorState.maybePop();
    } else if (_currentIndex != _initialIndex) {
      setState(() {
        _currentIndex = _initialIndex;
      });
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: const [
            MusicNavigator(),
            ChatNavigator(),
            ProfileNavigator(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _selectTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: 'Music',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  void _selectTab(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
