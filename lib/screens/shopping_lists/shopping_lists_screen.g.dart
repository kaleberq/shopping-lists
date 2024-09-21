// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_lists_screen.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $treeRouter,
    ];

RouteBase get $treeRouter => GoRouteData.$route(
      path: '/',
      factory: $TreeRouterExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'list',
          factory: $ShoppingScreenRouteExtension._fromState,
        ),
      ],
    );

extension $TreeRouterExtension on TreeRouter {
  static TreeRouter _fromState(GoRouterState state) => TreeRouter();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShoppingScreenRouteExtension on ShoppingScreenRoute {
  static ShoppingScreenRoute _fromState(GoRouterState state) =>
      ShoppingScreenRoute();

  String get location => GoRouteData.$location(
        '/list',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
