import 'package:flutter/material.dart';

class MusicSearchResultsPage extends StatelessWidget {
  const MusicSearchResultsPage({Key? key}) : super(key: key);

  _goBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Music Search Results',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => _goBack(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
