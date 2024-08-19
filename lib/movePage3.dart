import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_flutter_prooject/screen/new_page2.dart';

const assetImagePath = 'assets/images/';
const bannerImage = '$assetImagePath/banner.png';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
              path: '/',
              name: 'home',
              builder: (context, _) => const HomeWidget()),
          GoRoute(
            path: '/new',
            name: 'new',
            builder: (context, _) => const NewPage(),
            routes: const [

            ],
          ),
          GoRoute(
              path: '/new1',
              name: 'new1',
              builder: (context, _) => const NewPage2()),
        ],
      ),
    ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        title: const Text('Flutter에서 화면 이동하기'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to Page'),
          onPressed: () {
            context.pushNamed('new1');
          },
        ),
      ),
    );
  }
}
