import 'package:bottom_navigation_example/navigation/routes.dart';
import 'package:bottom_navigation_example/navigation/routes_factory.dart';
import 'package:flutter/material.dart';

final profileNavigatorKey = GlobalKey<NavigatorState>();

class ProfileNavigator extends StatefulWidget {
  const ProfileNavigator({Key? key}) : super(key: key);

  @override
  State<ProfileNavigator> createState() => _ProfileNavigatorState();
}

class _ProfileNavigatorState extends State<ProfileNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: profileNavigatorKey,
      initialRoute: Routes.profile,
      onGenerateRoute: (settings) =>
          RoutesFactory().getGeneratedRoute(settings),
    );
  }
}
