// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i6;

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:raqamlar/features/draw/domain/entity/number_entity.dart' as _i5;
import 'package:raqamlar/features/draw/presentation/pages/draw_page.dart'
    as _i1;
import 'package:raqamlar/features/result/presentation/pages/result_page.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    DrawRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DrawPage(),
      );
    },
    ResultRoute.name: (routeData) {
      final args = routeData.argsAs<ResultRouteArgs>(
          orElse: () => const ResultRouteArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ResultPage(
          key: args.key,
          percentage: args.percentage,
          numberEntity: args.numberEntity,
          image: args.image,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.DrawPage]
class DrawRoute extends _i3.PageRouteInfo<void> {
  const DrawRoute({List<_i3.PageRouteInfo>? children})
      : super(
          DrawRoute.name,
          initialChildren: children,
        );

  static const String name = 'DrawRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ResultPage]
class ResultRoute extends _i3.PageRouteInfo<ResultRouteArgs> {
  ResultRoute({
    _i4.Key? key,
    String? percentage,
    _i5.NumberEntity? numberEntity,
    _i6.File? image,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          ResultRoute.name,
          args: ResultRouteArgs(
            key: key,
            percentage: percentage,
            numberEntity: numberEntity,
            image: image,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultRoute';

  static const _i3.PageInfo<ResultRouteArgs> page =
      _i3.PageInfo<ResultRouteArgs>(name);
}

class ResultRouteArgs {
  const ResultRouteArgs({
    this.key,
    this.percentage,
    this.numberEntity,
    this.image,
  });

  final _i4.Key? key;

  final String? percentage;

  final _i5.NumberEntity? numberEntity;

  final _i6.File? image;

  @override
  String toString() {
    return 'ResultRouteArgs{key: $key, percentage: $percentage, numberEntity: $numberEntity, image: $image}';
  }
}
