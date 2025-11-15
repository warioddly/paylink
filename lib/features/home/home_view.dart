import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: MyQrView(),
            ),
          ],
        ),
      ),
    );
  }
}

class MyQrView extends StatelessWidget {
  const MyQrView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202,
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      padding: .all(20),
      margin: .all(20),
      child: Column(
        children: [
          Text(r"$5,156.00"),
        ],
      ),
    );
  }
}
