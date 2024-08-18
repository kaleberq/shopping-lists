import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_lists/route.dart';
import 'package:shopping_lists/screens/list/list_screen.dart';
part 'shopping_lists_screen.g.dart';

@TypedGoRoute<ShoppingListsScreenRoute>(path: '/', routes: routes)
class ShoppingListsScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ShoppingListsScreen();
  }
}

class ShoppingListsScreen extends ConsumerStatefulWidget {
  const ShoppingListsScreen({super.key});

  @override
  ConsumerState createState() => _ShoppingListsScreenState();
}

class _ShoppingListsScreenState extends ConsumerState<ShoppingListsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas de compras'),
      ),
      body: SafeArea(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 15), // Espaçamento interno do botão
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(18.0), // Borda arredondada do botão
          ),
        ),
        onPressed: () {
          ListScreenRoute().push(context);
        },
        child: const Text('navega'),
      )),
    );
  }
}
