import 'package:flutter/material.dart';
import 'package:test_app/core/config/locale/generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).appName)),
    );
  }
}
