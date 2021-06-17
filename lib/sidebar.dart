import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'helpers/responsive.dart';
import 'navigation_router.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        child: ListView(
          children: [
            _buildTile(
              title: 'Dashboard',
              onTap: () {
                if (Responsive.isMobile(context)) context.popRoute();
                context.tabsRouter.setActiveIndex(0);
              },
            ),
            _buildExpandableTile(title: 'Catalog', children: [
              _buildTile(
                title: 'Products',
                onTap: () {
                  if (Responsive.isMobile(context)) context.popRoute();
                  context.navigateTo(CatalogRoute(children: [ProductsRoute()]));
                },
              ),
              _buildTile(
                title: 'Category',
                onTap: () {
                  if (Responsive.isMobile(context)) context.popRoute();
                  context.navigateTo(CatalogRoute(children: [CategoryRoute()]));
                },
              ),
            ]),
            _buildExpandableTile(title: 'Orders', children: [
              _buildTile(
                title: 'Active Orders',
                onTap: () {
                  if (Responsive.isMobile(context)) context.popRoute();
                  context
                      .navigateTo(OrdersRoute(children: [ActiveOrdersRoute()]));
                },
              ),
              _buildTile(
                title: 'Pending Orders',
                onTap: () {
                  if (Responsive.isMobile(context)) context.popRoute();
                  context
                      .navigateTo(OrdersRoute(children: [PendingOrderRoute()]));
                },
              ),
            ]),
          ],
        ));
  }

  Widget _buildTile({required String title, required Function onTap}) {
    return ListTile(
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.fade,
      ),
      onTap: () => onTap(),
    );
  }

  Widget _buildExpandableTile({
    required String title,
    required List<Widget> children,
  }) {
    return ExpansionTile(
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.fade,
      ),
      children: children,
    );
  }
}
