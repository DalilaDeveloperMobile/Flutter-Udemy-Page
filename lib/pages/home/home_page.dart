import 'package:flutter/material.dart';
import 'package:projeto_responsivo1/breakpoints.dart';
import 'package:projeto_responsivo1/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:projeto_responsivo1/pages/home/widgets/app_bar/web_app_bar.dart';

import 'widgets/sections/advantages_section.dart';
import 'widgets/sections/couses_section.dart';
import 'widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar())
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 72),
                  child: WebAppBar(),
                ),
          drawer:
              constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1300),
              child: ListView(children: const [
                TopSection(),
                AdvantagesSection(),
                CoursesSection(),
              ]),
            ),
          ),
        );
      },
    );
  }
}
