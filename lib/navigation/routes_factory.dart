import 'package:bottom_navigation_example/home_layout.dart';
import 'package:bottom_navigation_example/navigation/routes.dart';
import 'package:bottom_navigation_example/pages/chats/chat_page.dart';
import 'package:bottom_navigation_example/pages/chats/chats_page.dart';
import 'package:bottom_navigation_example/pages/music/music_album_page.dart';
import 'package:bottom_navigation_example/pages/music/music_page.dart';
import 'package:bottom_navigation_example/pages/music/search/music_search_resultss_page.dart';
import 'package:bottom_navigation_example/pages/music/search/music_search_tags_page.dart';
import 'package:bottom_navigation_example/pages/profile/profile_page.dart';
import 'package:bottom_navigation_example/pages/settings_page.dart';
import 'package:bottom_navigation_example/pages/start_page.dart';
import 'package:flutter/material.dart';

typedef PageBuilder = Widget Function(BuildContext context, Object? args);
typedef RouteGenerator = Route<dynamic> Function(RouteSettings settings);

class RoutesFactory {
  Map<String, PageBuilder> get _routes => {
        Routes.splash: (context, args) => const StartPage(),
        Routes.home: (context, args) => const HomeLayout(),
        Routes.music: (context, args) => const MusicPage(),
        Routes.musicAlbum: (context, args) => const MusicAlbumPage(),
        Routes.musicSearchTags: (context, args) => const MusicSearchTagsPage(),
        Routes.musicSearchResults: (context, args) =>
            const MusicSearchResultsPage(),
        Routes.chats: (context, args) => const ChatsPage(),
        Routes.chatsChat: (context, args) => const ChatPage(),
        Routes.profile: (context, args) => const ProfilePage(),
        Routes.settings: (context, args) => const SettingsPage(),
      };

  Route<dynamic>? getGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return null;
      default:
        return MaterialPageRoute<dynamic>(
          settings: settings,
          builder: (context) => _routes[settings.name]!(
            context,
            settings.arguments,
          ),
        );
    }
  }
}
