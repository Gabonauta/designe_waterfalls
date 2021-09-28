import 'package:designe_waterfalls/src/widgets/background.dart';
import 'package:designe_waterfalls/src/widgets/card_table.dart';
import 'package:designe_waterfalls/src/widgets/custom_navigation.dart';
import 'package:designe_waterfalls/src/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //titulos
          PageTitle(),
          //cards table
          CardTable(),
        ],
      ),
    );
  }
}
