import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout/default_layout.dart';
import 'package:gap/gap.dart';

class GapScreen extends StatelessWidget {
  static String get routeName => 'gap';
  const GapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: routeName,
      child: Column(
        children: [
          const Text(
              "Padding이나 SizedBox처럼 Column이나 Row를 사용할때 방향에 대해 신경 쓸 필요 없습니다"),
          const Gap(16),
          Container(
            height: 100,
            color: Colors.amber,
          ),
          const Gap(16),
          Container(
            height: 100,
            color: Colors.amber,
          ),
          const Gap(5),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
              const Gap(5),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
              const MaxGap(5),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
            ],
          )
        ],
      ),
    );
  }
}
