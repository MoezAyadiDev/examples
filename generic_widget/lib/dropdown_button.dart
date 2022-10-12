import 'package:flutter/material.dart';
import 'package:generic_widget/helper.dart';

class GenericDropDownButton<T extends Helper> extends StatefulWidget {
  final List<T> list;
  final T? selectedValue;
  final Function(T? selectedItem) callback;
  const GenericDropDownButton({
    super.key,
    required this.list,
    required this.selectedValue,
    required this.callback,
  });

  @override
  State<GenericDropDownButton<T>> createState() =>
      _GenericDropDownButtonState<T>();
}

class _GenericDropDownButtonState<T extends Helper>
    extends State<GenericDropDownButton<T>> {
  late T? drowdownvalue;

  @override
  void initState() {
    super.initState();
    drowdownvalue = widget.selectedValue;
  }

  @override
  void didUpdateWidget(covariant GenericDropDownButton<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (drowdownvalue != widget.selectedValue) {
      drowdownvalue = widget.selectedValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      value: drowdownvalue,
      items: widget.list
          .map<DropdownMenuItem<T>>(
            (e) => DropdownMenuItem<T>(
              value: e,
              child: Text(e.itemValue()),
            ),
          )
          .toList(),
      onChanged: (value) {
        setState(() {
          drowdownvalue = value;
          widget.callback(value);
        });
      },
    );
  }
}
