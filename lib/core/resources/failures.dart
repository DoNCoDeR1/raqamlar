abstract class Failure {
  final String message;
  final int? statusCode;

  const Failure(this.message, this.statusCode);
}

class ServerFailure extends Failure {
  const ServerFailure({
    required String errorMessage,
    int? statusCode,
  }) : super(
          errorMessage,
          statusCode,
        );
}

class ConnectionFailure extends Failure {
  const ConnectionFailure(
    super.message,
    super.statusCode,
  );
}

class DatabaseFailure extends Failure {
  const DatabaseFailure(
    super.message,
    super.statusCode,
  );
}
