// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'pages/catalog.dart' as _i5;
import 'pages/dashboard.dart' as _i4;
import 'pages/home.dart' as _i3;
import 'pages/orders.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.Home();
        },
        opaque: true,
        barrierDismissible: false),
    DashboardRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.Dashboard();
        },
        opaque: true,
        barrierDismissible: false),
    CatalogRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        },
        opaque: true,
        barrierDismissible: false),
    OrdersRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        },
        opaque: true,
        barrierDismissible: false),
    ProductsRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.Products();
        },
        opaque: true,
        barrierDismissible: false),
    CategoryRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.Category();
        },
        opaque: true,
        barrierDismissible: false),
    ActiveOrdersRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.ActiveOrders();
        },
        opaque: true,
        barrierDismissible: false),
    PendingOrderRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.PendingOrders();
        },
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/', children: [
          _i1.RouteConfig('#redirect',
              path: '', redirectTo: 'dashboard', fullMatch: true),
          _i1.RouteConfig(DashboardRoute.name, path: 'dashboard'),
          _i1.RouteConfig(CatalogRoute.name, path: 'catalog', children: [
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: 'products', fullMatch: true),
            _i1.RouteConfig(ProductsRoute.name, path: 'products'),
            _i1.RouteConfig(CategoryRoute.name, path: 'category')
          ]),
          _i1.RouteConfig(OrdersRoute.name, path: 'orders', children: [
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: 'active', fullMatch: true),
            _i1.RouteConfig(ActiveOrdersRoute.name, path: 'active'),
            _i1.RouteConfig(PendingOrderRoute.name, path: 'pending')
          ])
        ])
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

class DashboardRoute extends _i1.PageRouteInfo {
  const DashboardRoute() : super(name, path: 'dashboard');

  static const String name = 'DashboardRoute';
}

class CatalogRoute extends _i1.PageRouteInfo {
  const CatalogRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'catalog', initialChildren: children);

  static const String name = 'CatalogRoute';
}

class OrdersRoute extends _i1.PageRouteInfo {
  const OrdersRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'orders', initialChildren: children);

  static const String name = 'OrdersRoute';
}

class ProductsRoute extends _i1.PageRouteInfo {
  const ProductsRoute() : super(name, path: 'products');

  static const String name = 'ProductsRoute';
}

class CategoryRoute extends _i1.PageRouteInfo {
  const CategoryRoute() : super(name, path: 'category');

  static const String name = 'CategoryRoute';
}

class ActiveOrdersRoute extends _i1.PageRouteInfo {
  const ActiveOrdersRoute() : super(name, path: 'active');

  static const String name = 'ActiveOrdersRoute';
}

class PendingOrderRoute extends _i1.PageRouteInfo {
  const PendingOrderRoute() : super(name, path: 'pending');

  static const String name = 'PendingOrderRoute';
}
