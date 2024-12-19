import 'package:flutter/material.dart';
import 'package:knowknowgram_app/common/custom_appbar.dart';
import 'package:knowknowgram_app/theme/colors.dart';

class GenerateScreen extends StatefulWidget {
  const GenerateScreen({super.key});

  @override
  State<GenerateScreen> createState() => _GenerateScreenState();
}

class _GenerateScreenState extends State<GenerateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mediumBlack,
      appBar: CustomAppbar(),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
