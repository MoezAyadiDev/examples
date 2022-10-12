import 'package:generic_widget/helper.dart';

class Currency extends Helper {
  final int id;
  final String symbole;

  const Currency({required this.id, required this.symbole});

  @override
  String itemValue() => symbole;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Currency &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          symbole == other.symbole;

  @override
  int get hashCode => Object.hash(runtimeType, id, symbole);
}
