import 'package:flutter/material.dart';

class GoRouterObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    debugPrint('didPop: ${route.settings.name}');
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint(
        'didPush: ${route.settings.name} previouseRoute: ${previousRoute?.settings.name}');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    debugPrint(
        'didRemove: ${route.settings.name} previouseRoute: ${previousRoute?.settings.name}');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    debugPrint(
        'didRemove: ${newRoute?.settings.name} previouseRoute: ${oldRoute?.settings.name}');
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    debugPrint(
        'didStartUserGesture: ${route.settings.name} previouseRoute: ${previousRoute?.settings.name}');
  }

  @override
  void didStopUserGesture() {
    debugPrint('didStopUserGesture');
  }
}
