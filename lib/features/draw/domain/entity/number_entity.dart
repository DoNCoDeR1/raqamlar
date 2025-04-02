import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class NumberEntity {
  final int number;
  final Color color;
  final Image image;

  NumberEntity({
    required this.number,
    required this.color,
    required this.image,
  });
}

final numbers = [
  NumberEntity(
    number: 0,
    color: const Color(0xFFE73A3C),
    image: Assets.png.zero.image(height: 109),
  ),
  NumberEntity(
    number: 1,
    color: const Color(0xFFEF4956),
    image: Assets.png.one.image(height: 109),
  ),
  NumberEntity(
    number: 2,
    color: const Color(0xFFEC4C7D),
    image: Assets.png.two.image(height: 109),
  ),
  NumberEntity(
    number: 3,
    color: const Color(0xFFBCBC33),
    image: Assets.png.three.image(height: 109),
  ),
  NumberEntity(
    number: 4,
    color: const Color(0xFFF8AA2E),
    image: Assets.png.four.image(height: 109),
  ),
  NumberEntity(
    number: 5,
    color: const Color(0xFF9D77AC),
    image: Assets.png.five.image(height: 109),
  ),
  NumberEntity(
    number: 6,
    color: const Color(0xFF70CEDC),
    image: Assets.png.six.image(height: 109),
  ),
  NumberEntity(
    number: 7,
    color: const Color(0xFF3692D0),
    image: Assets.png.seven.image(height: 109),
  ),
  NumberEntity(
    number: 8,
    color: const Color(0xFFF285AC),
    image: Assets.png.eight.image(height: 109),
  ),
  NumberEntity(
    number: 9,
    color: const Color(0xFFF15F30),
    image: Assets.png.nine.image(height: 109),
  ),
];
