import 'package:dartz/dartz.dart';

import '../entity/drawing_param.dart';
import '/core/errors/failure.dart';

abstract class DrawRepo {
  Future<Either<Failure, String>> submit(DrawingParams params);
}
