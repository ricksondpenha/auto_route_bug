export 'navigation_router.gr.dart';

import 'package:auto_route/auto_route.dart';
import 'pages/catalog.dart';
import 'pages/dashboard.dart';
import 'pages/home.dart';
import 'pages/orders.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      name: 'HomeRoute',
      initial: true,
      page: Home,
      children: [
        RedirectRoute(path: '', redirectTo: 'dashboard'),
        AutoRoute(path: 'dashboard', name: 'DashboardRoute', page: Dashboard),
        AutoRoute(
          path: 'catalog',
          page: EmptyRouterPage,
          name: 'CatalogRoute',
          children: [
            RedirectRoute(path: '*', redirectTo: 'products'),
            AutoRoute(
              path: 'products',
              name: "ProductsRoute",
              page: Products,
            ),
            AutoRoute(
              path: 'category',
              name: "CategoryRoute",
              page: Category,
            ),
          ],
        ),
        AutoRoute(
          path: 'orders',
          page: EmptyRouterPage,
          name: 'ordersRoute',
          children: [
            RedirectRoute(path: '*', redirectTo: 'active'),
            AutoRoute(
              path: 'active',
              name: "ActiveOrdersRoute",
              page: ActiveOrders,
            ),
            AutoRoute(
              path: 'pending',
              name: "PendingOrderRoute",
              page: PendingOrders,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
