

import 'dart:ui';

import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  const Category({
    required this.id,
    required this.title,
     this.color = Colors.orange,
  });

  Map<String, Object> toMap() {
    return {
      'id': id,
      'title': title,
      'color': color.value,
    };
  }

  factory Category.fromMap(Map<String, Object> map) {
    return Category(
      id: map['id'] as String,
      title: map['title'] as String,
      color: Color(map['color'] as int),
    );
  }
}