import 'package:bottom_navigation_example/navigation/routes.dart';
import 'package:bottom_navigation_example/pages/music/search/music_search_navigator.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({Key? key}) : super(key: key);

  _showAlbum(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.musicAlbum);
  }

  _showSearch(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const MusicSearchNavigator(),
    );
  }

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
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => _showSearch(context),
                child: const Text('Search'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
