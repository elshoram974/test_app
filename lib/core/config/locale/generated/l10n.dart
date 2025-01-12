// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Test App`
  String get appName {
    return Intl.message(
      'Test App',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Metrics Screen`
  String get metricsScreen {
    return Intl.message(
      'Metrics Screen',
      name: 'metricsScreen',
      desc: '',
      args: [],
    );
  }

  /// `Graph Screen`
  String get graphScreen {
    return Intl.message(
      'Graph Screen',
      name: 'graphScreen',
      desc: '',
      args: [],
    );
  }

  /// `Total Orders: {totalOrders}`
  String totalOrdersNo(int totalOrders) {
    return Intl.message(
      'Total Orders: $totalOrders',
      name: 'totalOrdersNo',
      desc: '',
      args: [totalOrders],
    );
  }

  /// `Average Order Price: {averageOrderPrice}`
  String averageOrderPrice(String averageOrderPrice) {
    return Intl.message(
      'Average Order Price: $averageOrderPrice',
      name: 'averageOrderPrice',
      desc: '',
      args: [averageOrderPrice],
    );
  }

  /// `Returned Orders: {returnedOrders}`
  String returnedOrders(int returnedOrders) {
    return Intl.message(
      'Returned Orders: $returnedOrders',
      name: 'returnedOrders',
      desc: '',
      args: [returnedOrders],
    );
  }

  /// `Go to`
  String get goTo {
    return Intl.message(
      'Go to',
      name: 'goTo',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
