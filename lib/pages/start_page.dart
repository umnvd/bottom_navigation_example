import 'package:bottom_navigation_example/navigation/routes.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Start Page',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => _goNext(context),
                child: const Text('Go'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goNext(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(Routes.home);
  }
}
