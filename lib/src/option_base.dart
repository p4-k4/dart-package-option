/// Represents an optional value that may or may not be present.
///
/// [Option] is a type-safe way to handle nullable values without using null.
/// It can be either [Some] containing a value, or [None] representing no value.
///
/// Example usage:
/// ```dart
/// Option<int> divide(int a, int b) {
///   if (b == 0) return const None();
///   return Some(a ~/ b);
/// }
///
/// void main() {
///   final result = divide(10, 2); // Some(5)
///   final error = divide(10, 0);  // None()
/// }
/// ```
///
/// The [Option] type is particularly useful when:
/// - A value might not exist
/// - You want to avoid null checks
/// - You need to handle absence of value in a type-safe way
sealed class Option<T> {
  /// Creates a constant [Option].
  const Option();
}

/// Represents the presence of a value in an [Option].
///
/// [Some] is used when you have a valid value to wrap in an [Option].
/// It contains exactly one non-null value of type [T].
///
/// Example:
/// ```dart
/// final age = Some(25);
/// final name = Some('John');
/// ```
class Some<T> extends Option<T> {
  /// Creates a [Some] instance containing the given [value].
  ///
  /// The [value] parameter must not be null.
  const Some(this.value);

  /// The contained value.
  ///
  /// This value is guaranteed to be non-null.
  final T value;
}

/// Represents the absence of a value in an [Option].
///
/// [None] is used when an [Option] contains no value.
/// It's similar to null but provides type safety and forces explicit handling.
///
/// Example:
/// ```dart
/// final emptyResult = None<int>();
/// final noValue = None<String>();
/// ```
class None<T> extends Option<T> {
  /// Creates a [None] instance.
  const None();
}
