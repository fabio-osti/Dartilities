library dartilities;


extension Generilities<T> on T {
  bool Function(dynamic) get equalityChecker => (value) => value == this;
  T? nullIf(bool Function(T) condition) => condition(this) ? null : this;
  T throwIfNull([String? message]) {
    if (this == null) throw ArgumentError(message);
    return this;
  }
}

extension Strilities on String? {
  bool isEmptyOrNull() => this?.isEmpty ?? true;
}