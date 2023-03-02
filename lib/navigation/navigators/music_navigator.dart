import 'package:bottom_navigation_example/navigation/routes.dart';
import 'package:bottom_navigation_example/navigation/routes_factory.dart';
import 'package:flutter/material.dart';

final musicNavigatorKey = GlobalKey<NavigatorState>();

class MusicNavigator extends StatefulWidget {
  const MusicNavigator({Key? key}) : super(key: key);

  @override
  State<MusicNavigator> createState() => _MusicNavigatorState();
}

class _MusicNavigatorState extends State<MusicNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: musicNavigatorKey,
      initialRoute: Routes.music,
      onGenerateRoute: RoutesFactory().getGeneratedRoute,
    );
  }
}
