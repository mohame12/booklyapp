import 'package:flutter/material.dart';

import '../widgets/Details_screen_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  static const String id='DetailsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(),
    );
  }
}


