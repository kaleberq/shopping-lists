import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_lists/domain/models/product_model.dart';
import 'package:shopping_lists/domain/models/shopping_model.dart';
import 'package:shopping_lists/domain/models/typedef.dart';
import 'package:shopping_lists/route.dart';
import 'package:shopping_lists/screens/shopping/shopping_screen.dart';
import 'package:shopping_lists/screens/shopping_lists/shopping_lists_view_model.dart';
part 'shopping_lists_screen.g.dart';

@TypedGoRoute<TreeRouter>(path: '/', routes: routes)
class TreeRouter extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ShoppingScreen();
  }
}

class ShoppingScreen extends ConsumerStatefulWidget {
  const ShoppingScreen({super.key});

  @override
  ConsumerState createState() => _ShoppingListsScreenState();
}

class _ShoppingListsScreenState extends ConsumerState<ShoppingScreen> {
  late final shoppingListViewModel =
      ref.read(shoppingListViewModelProvider.notifier);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      shoppingListViewModel.setNewList(
        ShoppingModel(
            id: 1,
            name: 'Segunda feira',
            products: [
              const ProductModel(id: 1, name: 'Feijão', price: 12.45),
              const ProductModel(id: 1, name: 'Arroz', price: 12.45),
              const ProductModel(id: 1, name: 'Carne', price: 12.45),
              const ProductModel(id: 1, name: 'Pão', price: 12.45)
            ],
            createdAt: DateTime.now(),
            updatedAt: DateTime.now()),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas de compras'),
      ),
      body: SafeArea(child: Consumer(
          builder: (BuildContext context, WidgetRef ref, _) {
        final AsyncShoppingLists asyncShoppingList =
            ref.watch(shoppingListViewModelProvider).asyncShoppingList;

        return asyncShoppingList.when(
            data: (ShoppingList shoppingList) => Column(
                  children: shoppingList
                      .map((ShoppingModel list) => Column(
                            children: [
                              Text(list.name),
                              Text(list.totalPrice.toString()),
                            ],
                          ))
                      .toList(),
                ),
            error: (error, stackError) => const Text('Error'),
            loading: () => const Text('carregando'));
      }

          // ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(18.0),
          // ),
          //         ),
          //         onPressed: () {
          // ShoppingScreenRoute().push(context);
          //         },
          //         child: const Text('navega'),
          //       ),
          )),
    );
  }
}
