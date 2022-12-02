import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/cards.dart';
import 'package:learn_flutter/pages/drag.dart';
import 'package:learn_flutter/pages/flexible.dart';
import 'package:learn_flutter/pages/page_builder.dart';
import 'package:learn_flutter/pages/stack.dart';
import 'package:learn_flutter/pages/list_view.dart';
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
            path: 'widget',
            builder: (context, state) => const MyPageBuilder(
              textTitle: "Stack",
              childWidget: MyListView(),
            ),
          ),
          GoRoute(
              path: 'flex',
              builder: ((context, state) {
                return const MyPageBuilder(
                  textTitle: "Flexible",
                  childWidget: MyFlexibleLayout(),
                );
              })),
          GoRoute(
            path: 'stack',
            builder: (context, state) => const MyPageBuilder(
              textTitle: "Stack",
              childWidget: MyStackWidget(),
            ),
          ),
          GoRoute(
            path: 'drag',
            builder: (context, state) => const MyPageBuilder(
              textTitle: "Draggable Component",
              childWidget: MyDraggableComponent(),
            ),
          ),
          GoRoute(
            path: 'cards',
            builder: (context, state) => const MyPageBuilder(
              textTitle: "Cards Creations",
              childWidget: MyCardsWidget(),
            ),
          ),
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
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              context.go('/widget');
            },
            child: const Text("ListView"),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/flex');
            },
            child: const Text("Flexible"),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/stack');
            },
            child: const Text("Stack"),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/drag');
            },
            child: const Text("Draggable Media"),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/cards');
            },
            child: const Text("Cards Creation"),
          ),
        ],
      ),
    );
  }
}
