import 'package:fast_app_base/common/common.dart';

import 'package:flutter/material.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({Key? key}) : super(key: key);

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> with SingleTickerProviderStateMixin {
  late final _tabController = TabController(length: 2, vsync: this);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView();
  }
  }