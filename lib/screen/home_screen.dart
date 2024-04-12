import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout/default_layout.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../component/routing_btn_widget.dart';
import 'gap_screen.dart';

class HomeScreen extends ConsumerWidget {
  static String get routeName => 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultLayout(
      title: "New Widget",
      child: Column(
        children: [
          RoutingBtnWidget(
            title: "Gap",
            onPressed: () =>
                ref.read(routerProvider).goNamed(GapScreen.routeName),
          ),
        ],
      ),
    );
  }
}
