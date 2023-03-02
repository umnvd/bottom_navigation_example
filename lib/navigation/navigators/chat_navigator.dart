import 'package:bottom_navigation_example/navigation/routes.dart';
import 'package:bottom_navigation_example/navigation/routes_factory.dart';
import 'package:flutter/material.dart';

final chatNavigatorKey = GlobalKey<NavigatorState>();

class ChatNavigator extends StatefulWidget {
  const ChatNavigator({Key? key}) : super(key: key);

  @override
  State<ChatNavigator> createState() => _ChatNavigatorState();
}

class _ChatNavigatorState extends State<ChatNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: chatNavigatorKey,
      initialRoute: Routes.chats,
      onGenerateRoute: RoutesFactory().getGeneratedRoute,
    );
  }
}
