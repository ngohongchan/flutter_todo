import 'package:flutter/material.dart';
import 'package:flutter_todo/application/core/page_config.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  static const pageConfig = PageConfig(
    icon: Icons.dashboard_rounded,
    name: 'dashboard',
    child: DashBoardPage(),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purpleAccent,
    );
  }
}
