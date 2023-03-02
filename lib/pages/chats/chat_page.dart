import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Chat Page',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => _openAlbum(context),
                child: const Text('Open Album from message'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _openAlbum(BuildContext context) {
    // TODO: open MusicAlbumPage
  }
}
