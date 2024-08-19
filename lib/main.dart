import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_lists/screens/shopping_lists/shopping_lists_screen.dart';

void main() {
  final GoRouter router = GoRouter(routes: $appRoutes);
  runApp(ProviderScope(
      child: MaterialApp.router(
    routerConfig: router,
  )));
}
