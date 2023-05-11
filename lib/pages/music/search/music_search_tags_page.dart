import 'package:bottom_navigation_example/navigation/routes.dart';
import 'package:flutter/material.dart';

class MusicSearchTagsPage extends StatelessWidget {
  const MusicSearchTagsPage({Key? key}) : super(key: key);

  _goToResults(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.musicSearchResults);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Music Search Tags',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => _goToResults(context),
              child: const Text('Go'),
            ),
          ],
        ),
      ),
    );
  }
}
