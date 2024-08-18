import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ListScreenRoute extends GoRouteData {
  @override
  FutureOr<bool> onExit(BuildContext context, GoRouterState state) {
    return false;
  }

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    print('redireciona');
    return super.redirect(context, state);
  }

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ListScreen();
  }
}

class ListScreen extends ConsumerStatefulWidget {
  const ListScreen({super.key});

  @override
  ConsumerState createState() => _ListScreenState();
}

class _ListScreenState extends ConsumerState<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Novo produto'),
        ),
        body: const SafeArea(child: Text('lista')));
  }
}
