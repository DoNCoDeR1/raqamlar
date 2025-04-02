// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i7;

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:raqamlar/features/connection/presentation/pages/error_connection_page.dart'
    as _i2;
import 'package:raqamlar/features/draw/domain/entity/number_entity.dart' as _i6;
import 'package:raqamlar/features/draw/presentation/pages/draw_page.dart'
    as _i1;
import 'package:raqamlar/features/result/presentation/pages/result_page.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DrawRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DrawPage(),
      );
    },
    ErrorConnectionRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ErrorConnectionPage(),
      );
    },
    ResultRoute.name: (routeData) {
      final args = routeData.argsAs<ResultRouteArgs>(
          orElse: () => const ResultRouteArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ResultPage(
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
class DrawRoute extends _i4.PageRouteInfo<void> {
  const DrawRoute({List<_i4.PageRouteInfo>? children})
      : super(
          DrawRoute.name,
          initialChildren: children,
        );

  static const String name = 'DrawRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ErrorConnectionPage]
class ErrorConnectionRoute extends _i4.PageRouteInfo<void> {
  const ErrorConnectionRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ErrorConnectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ErrorConnectionRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ResultPage]
class ResultRoute extends _i4.PageRouteInfo<ResultRouteArgs> {
  ResultRoute({
    _i5.Key? key,
    String? percentage,
    _i6.NumberEntity? numberEntity,
    _i7.File? image,
    List<_i4.PageRouteInfo>? children,
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

  static const _i4.PageInfo<ResultRouteArgs> page =
      _i4.PageInfo<ResultRouteArgs>(name);
}

class ResultRouteArgs {
  const ResultRouteArgs({
    this.key,
    this.percentage,
    this.numberEntity,
    this.image,
  });

  final _i5.Key? key;

  final String? percentage;

  final _i6.NumberEntity? numberEntity;

  final _i7.File? image;

  @override
  String toString() {
    return 'ResultRouteArgs{key: $key, percentage: $percentage, numberEntity: $numberEntity, image: $image}';
  }
}
