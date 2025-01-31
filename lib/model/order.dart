import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class Order {
  final String? id;
  final bool? isActive;
  final double price;
  final String? company;
  final String? picture;
  final String? buyer;
  final List? tags;
  final String? status;
  final DateTime date;

  const Order({
    this.id,
    this.isActive,
    this.price = 0.0,
    this.company,
    this.picture,
    this.buyer,
    this.tags,
    this.status,
    required this.date,
  });

  @override
  String toString() {
    return 'Order(id: $id, isActive: $isActive, price: $price, company: $company, picture: $picture, buyer: $buyer, tags: $tags, status: $status, registered: ${date.toString()})';
  }

  factory Order.fromMap(Map<String, dynamic> data) => Order(
        id: data['id'] as String?,
        isActive: data['isActive'] as bool?,
        price: double.parse((data['price'] as String).replaceAll(r'$', '').replaceAll(',', '')),
        company: data['company'] as String?,
        picture: data['picture'] as String?,
        buyer: data['buyer'] as String?,
        tags: data['tags'] as List?,
        status: data['status'] as String?,
        date: DateTime.parse(data['registered'] as String),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'isActive': isActive,
        'price': price,
        'company': company,
        'picture': picture,
        'buyer': buyer,
        'tags': tags,
        'status': status,
        'registered': date.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Order].
  factory Order.fromJson(String data) {
    return Order.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Order] to a JSON string.
  String toJson() => json.encode(toMap());

  Order copyWith({
    String? id,
    bool? isActive,
    double? price,
    String? company,
    String? picture,
    String? buyer,
    List<String>? tags,
    String? status,
    DateTime? date,
  }) {
    return Order(
      id: id ?? this.id,
      isActive: isActive ?? this.isActive,
      price: price ?? this.price,
      company: company ?? this.company,
      picture: picture ?? this.picture,
      buyer: buyer ?? this.buyer,
      tags: tags ?? this.tags,
      status: status ?? this.status,
      date: date ?? this.date,
    );
  }
}
