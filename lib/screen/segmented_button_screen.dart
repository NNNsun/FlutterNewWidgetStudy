import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../layout/default_layout.dart';

class SegmentButtonScreen extends StatefulWidget {
  static String get routeName => 'segmented_button';
  const SegmentButtonScreen({super.key});

  @override
  State<SegmentButtonScreen> createState() => _SegmentButtonScreenState();
}

class _SegmentButtonScreenState extends State<SegmentButtonScreen> {
  Set<String> _selected = {"사과"};
  void updateSelected(Set<String> newSelection) {
    setState(() {
      _selected = newSelection;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        title: SegmentButtonScreen.routeName,
        child: Center(
          child: SegmentedButton(
            segments: const <ButtonSegment<String>>[
              ButtonSegment<String>(value: '사과', label: Text('사과')),
              ButtonSegment<String>(value: '오랜지', label: Text('오랜지')),
              ButtonSegment<String>(value: '토마토', label: Text('토마토')),
            ],
            selected: _selected,
            onSelectionChanged: updateSelected,
          ),
        ));
  }
}
