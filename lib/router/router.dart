import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'router_controller.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  final provider = ref.read(routerController);

  return GoRouter(
    routes: provider.routes,
    initialLocation: '/home',
    refreshListenable: provider,
    debugLogDiagnostics: true,
  );
}
