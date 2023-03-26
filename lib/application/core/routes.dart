import 'package:flutter/material.dart';
import 'package:flutter_todo/application/core/go_router_observer.dart';
import 'package:flutter_todo/application/pages/error_page/error_page.dart';
import 'package:flutter_todo/application/pages/home/home_page.dart';
import 'package:flutter_todo/application/pages/settings/settings_page.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

final GlobalKey<NavigatorState> _shellNavigationKey = GlobalKey<NavigatorState>(
  debugLabel: 'shell',
);

const String _basePath = '/home';

final routes = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home/dashboard',
  observers: [GoRouterObserver()],
  errorBuilder: (context, state) => const ErrorPage(),
  routes: [
    GoRoute(
      name: SettingsPage.pageConfig.name,
      path: '$_basePath/settings',
      builder: (context, state) {
        return const SettingsPage();
      },
    ),
    ShellRoute(
      navigatorKey: _shellNavigationKey,
      builder: (context, state, child) => child,
      routes: [
        GoRoute(
          name: HomePage.pageConfig.name,
          path: '$_basePath/:tab',
          builder: (context, state) => HomePage(
            key: state.pageKey,
            tab: state.params['tab']!,
          ),
        ),
        GoRoute(
          path: '/*',
          builder: (context, state) => const ErrorPage(),
        ),
      ],
    ),
  ],
);
