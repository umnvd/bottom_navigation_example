import 'package:bottom_navigation_example/navigation/routes.dart';
import 'package:bottom_navigation_example/navigation/routes_factory.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splash,
      onGenerateRoute: RoutesFactory().getGeneratedRoute,
      // initialRoute: '/',
      // onGenerateRoute: (settings) => MaterialPageRoute(
      //   builder: (context) {
      //     switch (settings.name) {
      //       default:
      //         return MyHomePage();
      //     }
      //   },
      // ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: "Book",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.free_breakfast),
              label: "Coffee",
            )
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _selectedIndex,
          children: <Widget>[
            BookNavigator(),
            CoffeeNavigator(),
          ],
        ),
      ),
    );
  }
}

class BookNavigator extends StatefulWidget {
  @override
  _BookNavigatorState createState() => _BookNavigatorState();
}

class _BookNavigatorState extends State<BookNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/books2':
                  return Books2();
                default:
                  return Books1();
              }
            });
      },
    );
  }
}

class Books1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: Text("Books 1"),
        ),
        FilledButton(
          child: Text("Go to books 2"),
          onPressed: () => Navigator.pushNamed(context, '/books2'),
        ),
      ],
    );
  }
}

class Books2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: Text("Books 2"),
        )
      ],
    );
  }
}

class CoffeeNavigator extends StatefulWidget {
  @override
  _CoffeeNavigatorState createState() => _CoffeeNavigatorState();
}

class _CoffeeNavigatorState extends State<CoffeeNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/coffee2':
                  return Coffee2();
                default:
                  return Coffee1();
              }
            });
      },
    );
  }
}

class Coffee1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: Text("Coffee 1"),
        ),
        FilledButton(
          child: Text("Go to coffee 2"),
          onPressed: () => Navigator.pushNamed(context, '/coffee2'),
        ),
      ],
    );
  }
}

class Coffee2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: Text("Coffee 2"),
        ),
      ],
    );
  }
}
