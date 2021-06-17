import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/scheduler.dart';

import 'helpers/responsive.dart';
import 'navigation_router.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      getSelectedIndex();
    });
  }

  getSelectedIndex() {
    setState(() {
      //TODO: get a better way to find the current index of the nested routes
      _selectedIndex = context.tabsRouter.activeIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          width: 200,
          child: ListView(
            children: [
              _buildTile(
                title: 'Dashboard',
                index: 0,
                onTap: () {
                  if (Responsive.isMobile(context)) context.popRoute();
                  context.tabsRouter.setActiveIndex(0);
                },
              ),
              _buildExpandableTile(title: 'Catalog', children: [
                _buildTile(
                  title: 'Products',
                  index: 1,
                  onTap: () {
                    if (Responsive.isMobile(context)) context.popRoute();
                    context
                        .navigateTo(CatalogRoute(children: [ProductsRoute()]));
                  },
                ),
                _buildTile(
                  title: 'Category',
                  index: 2,
                  onTap: () {
                    if (Responsive.isMobile(context)) context.popRoute();
                    context
                        .navigateTo(CatalogRoute(children: [CategoryRoute()]));
                  },
                ),
              ]),
              _buildExpandableTile(title: 'Orders', children: [
                _buildTile(
                  title: 'Active Orders',
                  index: 3,
                  onTap: () {
                    if (Responsive.isMobile(context)) context.popRoute();
                    context.navigateTo(
                        OrdersRoute(children: [ActiveOrdersRoute()]));
                  },
                ),
                _buildTile(
                  title: 'Pending Orders',
                  index: 4,
                  onTap: () {
                    if (Responsive.isMobile(context)) context.popRoute();
                    context.navigateTo(
                        OrdersRoute(children: [PendingOrderRoute()]));
                  },
                ),
              ]),
            ],
          )),
    );
  }

  selectedIndex() {}

  Widget _buildTile({
    required String title,
    required int index,
    required Function onTap,
  }) {
    return ListTile(
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.fade,
      ),
      selected: _selectedIndex == index ? true : false,
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        onTap();
      },
    );
  }

  Widget _buildExpandableTile({
    required String title,
    required List<Widget> children,
  }) {
    return ExpansionTile(
      initiallyExpanded: true,
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.fade,
      ),
      children: children,
    );
  }
}
