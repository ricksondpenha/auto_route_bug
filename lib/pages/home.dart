import 'package:auto_route/auto_route.dart';
import 'package:auto_route_bug/helpers/responsive.dart';
import 'package:auto_route_bug/navigation_router.gr.dart';
import 'package:flutter/material.dart';

import '../sidebar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        DashboardRoute(),
        CatalogRoute(),
        OrdersRoute(),
      ],
      drawer: Responsive.isMobile(context) ? SideBar() : null,
      builder: (context, child, animation) {
        return Responsive.isMobile(context)
            ? Scaffold(
                drawer: SideBar(),
                appBar: AppBar(
                  title: Text(context.topRoute.path),
                  actions: [],
                ),
                body: child,
              )
            : Row(children: [
                SideBar(),
                Expanded(
                  flex: 4,
                  child: Scaffold(
                    appBar: AppBar(
                      title: !Responsive.isMobile(context)
                          ? Text(context.topRoute.path)
                          : null,
                      centerTitle: false,
                      actions: [],
                    ),
                    body: child,
                  ),
                ),
              ]);
      },
    );
  }
}
