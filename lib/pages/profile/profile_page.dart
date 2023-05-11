import 'package:bottom_navigation_example/navigation/routes.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Profile Page',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => _openSettings(context),
                child: const Text('Settings'),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => _openSettingsNested(context),
                child: const Text('Settings (nested)'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openSettings(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pushNamed(Routes.settings);
  }

  _openSettingsNested(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.settings);
  }
}
