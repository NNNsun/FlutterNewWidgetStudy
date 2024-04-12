import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/gap_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../screen/fi_chart_screen.dart';
import '../screen/home_screen.dart';

final routerController = ChangeNotifierProvider<RouterController>((ref) {
  return RouterController(ref: ref);
});

class RouterController extends ChangeNotifier {
  final Ref ref;
  RouterController({
    required this.ref,
  });

  List<RouteBase> get routes => [
        GoRoute(
            path: '/home',
            name: HomeScreen.routeName,
            builder: (_, __) => const HomeScreen(),
            routes: [
              GoRoute(
                path: 'gap',
                name: GapScreen.routeName,
                builder: (_, __) => const GapScreen(),
              ),
              GoRoute(
                path: 'fl_chart',
                name: FlChartScreen.routeName,
                builder: (_, __) => const FlChartScreen(),
              ),
            ]),
      ];
}
