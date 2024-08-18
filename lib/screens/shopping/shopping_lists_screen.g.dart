// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_lists_screen.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $shoppingListsScreenRoute,
    ];

RouteBase get $shoppingListsScreenRoute => GoRouteData.$route(
      path: '/',
      factory: $ShoppingListsScreenRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'list',
          factory: $ListScreenRouteExtension._fromState,
        ),
      ],
    );

extension $ShoppingListsScreenRouteExtension on ShoppingListsScreenRoute {
  static ShoppingListsScreenRoute _fromState(GoRouterState state) =>
      ShoppingListsScreenRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ListScreenRouteExtension on ListScreenRoute {
  static ListScreenRoute _fromState(GoRouterState state) => ListScreenRoute();

  String get location => GoRouteData.$location(
        '/list',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
