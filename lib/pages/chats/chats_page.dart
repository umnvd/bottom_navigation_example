import 'package:bottom_navigation_example/navigation/routes.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Chat List Page',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => _openChat(context),
                child: const Text('Chat'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _openChat(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pushNamed(Routes.chatsChat);
  }
}
