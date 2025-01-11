import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/config/locale/generated/l10n.dart';
import 'package:test_app/core/config/routes/app_routes.dart';
import 'package:test_app/core/shared/filled_button.dart';
import 'package:test_app/core/utils/constants/app_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).appName)),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(AppConst.defaultPadding),
          constraints: const BoxConstraints(maxWidth: AppConst.constraint),
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
              MyFilledButton(
                text: S.of(context).metricsScreen,
                onPressed: () => Get.toNamed(AppRoutes.metrics),
              ),
              MyFilledButton(
                text: S.of(context).graphScreen,
                onPressed: () => Get.toNamed(AppRoutes.graph),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
