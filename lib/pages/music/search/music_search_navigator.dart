import 'package:bottom_navigation_example/navigation/routes.dart';
import 'package:bottom_navigation_example/navigation/routes_factory.dart';
import 'package:flutter/cupertino.dart';

final musicSearchNavigatorKey = GlobalKey<NavigatorState>();

class MusicSearchNavigator extends StatefulWidget {
  const MusicSearchNavigator({Key? key}) : super(key: key);

  @override
  State<MusicSearchNavigator> createState() => _MusicSearchNavigatorState();
}

class _MusicSearchNavigatorState extends State<MusicSearchNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: musicSearchNavigatorKey,
      initialRoute: Routes.musicSearchTags,
      onGenerateRoute: RoutesFactory().getGeneratedRoute,
    );
  }
}
