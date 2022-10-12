import 'package:generic_widget/helper.dart';

class Langue extends Helper {
  final int id;
  final String langue;
  const Langue({required this.id, required this.langue});

  @override
  String itemValue() => langue;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Langue &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          langue == other.langue;

  @override
  int get hashCode => Object.hash(runtimeType, id, langue);
}
