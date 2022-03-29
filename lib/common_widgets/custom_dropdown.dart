import 'package:flutter/material.dart';

class CustomDropdown<T> extends StatefulWidget {
  const CustomDropdown({
    Key? key,
    required this.labelText,
    required this.list,
    required this.allTitles,
    required this.selectedValue,
    required this.onChanged,
  }) : super(key: key);

  final String labelText;
  final List<T> list;
  final List<String> allTitles;
  final T selectedValue;
  final Function(dynamic) onChanged;

  @override
  _CustomDropdownState<T> createState() => _CustomDropdownState<T>();
}

class _CustomDropdownState<T> extends State<CustomDropdown> {
  late T _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuItem<T>> _dropDownMenuModelNameItems = [];

    for (int i = 0; i < widget.list.length; i++) {
      _dropDownMenuModelNameItems.add(
        DropdownMenuItem(
          child: Text(
            widget.allTitles[i],
          ),
          value: widget.list[i],
        ),
      );
    }

    return InputDecorator(
      decoration: InputDecoration(
        labelText: widget.labelText,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          isExpanded: true,
          isDense: true,
          value: _selectedValue,
          items: _dropDownMenuModelNameItems,
          onChanged: (value) {
            setState(() => _selectedValue = value!);
            widget.onChanged(value);
          },
        ),
      ),
    );
  }
}
