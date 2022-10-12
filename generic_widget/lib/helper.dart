import 'package:equatable/equatable.dart';

abstract class Helper {
  const Helper();

  //This function will be implemented on each classes
  String itemValue();
}

abstract class HelperWithEquatable extends Equatable {
  const HelperWithEquatable();

  //This function will be implemented on each classes
  String itemValue();

  @override
  List<Object?> get props => [];
}
