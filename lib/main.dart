import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/flexible.dart';
import 'package:learn_flutter/widget/image.dart';
import 'package:learn_flutter/widget/layout.dart';
import 'package:learn_flutter/widget/text.dart';
import 'package:learn_flutter/widget/icon.dart';
import 'package:learn_flutter/widget/button.dart';
import 'package:learn_flutter/widget/list_view.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const _MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const Home();
        },
        routes: [
          GoRoute(
              path: 'flex',
              builder: ((context, state) {
                return const MyFlexibleLayout();
              }))
        ]),
  ],
);

/// The main app.
class _MyApp extends StatelessWidget {
  /// Constructs a [_MyApp]
  const _MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my first App'),
        centerTitle: true,
      ),
      body: const Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click me'),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyListView();
  }
}
