// https://github.com/YusukeIwaki/dart-kotlin_flavor/blob/master/lib/scope_functions.dart

extension ScopeFunctionsForObject<T extends Object> on T {
  ReturnType let<ReturnType>(ReturnType Function(T self) operationFor) {
    return operationFor(this);
  }

  T also(void Function(T self) operationFor) {
    operationFor(this);
    return this;
  }
}

extension ObjectPredicate<T extends Object> on T {
  T? takeIf(bool predicate) => predicate ? this : null;
}

extension StringExt on String {
  String? get takeIfNotEmpty => isNotEmpty ? this : null;
}

extension BoolThen on bool {
  T? then<T>(T value) => this == true ? value : null;
}

extension UriTrailingSlashExt on Uri {
  Uri ensureTrailingSlash() {
    if (!path.endsWith('/')) {
      return replace(path: path + '/');
    }
    return this;
  }
}

Never throwStateError(String message) {
  throw StateError(message);
}
