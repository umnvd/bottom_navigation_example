import 'package:bottom_navigation_example/navigation/routes.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Music Page',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => _showAlbum(context),
                child: const Text('Album'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showAlbum(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.musicAlbum);
  }
}
