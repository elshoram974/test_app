import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/config/locale/generated/l10n.dart';
import 'package:test_app/core/shared/responsive/constrained_box.dart';
import 'package:test_app/core/utils/constants/app_constants.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).graphScreen)),
      body: ResConstrainedBoxAlign(
        child: Padding(
          padding: const EdgeInsets.all(AppConst.defaultPadding),
          child: Column(
            spacing: AppConst.defaultPadding,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).goTo,
                textAlign: TextAlign.center,
                style: context.textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
