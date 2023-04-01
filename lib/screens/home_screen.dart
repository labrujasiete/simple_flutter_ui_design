import 'package:flutter/material.dart';
import 'package:simple_flutter_ui_design/widgets/background.dart';
import 'package:simple_flutter_ui_design/widgets/custom_bottom_navigaton.dart';
import 'package:simple_flutter_ui_design/widgets/page_title.dart';

import '../widgets/card_table.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202333),
      bottomNavigationBar: CustomBottomNavigation(),
      body: Stack(
        children: [
          Background(),
          _Foreground()
        ],
      ),

    );
  }
}

class _Foreground extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          PageTitle(),
          CardTable(),
        ],
      ),
    );
  }
}