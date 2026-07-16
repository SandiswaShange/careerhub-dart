sealed class ApiResult<T> {
  const ApiResult();
}

final class Success<T> extends ApiResult<T> {
  final T data;

  const Success(this.data) : super();
}

final class Failure<T> extends ApiResult<T> {
  final String message;
  final int? statusCode;

  const Failure(this.message, {this.statusCode}) : super();
}