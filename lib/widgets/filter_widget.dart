import 'package:event_app/models/filter_text.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({Key? key, required this.text, required this.index})
      : super(key: key);
  final String text;
  final int index;

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          filterTextList[widget.index].toogleSelected(widget.index);
        });
      },
      child: Container(
        margin: const EdgeInsets.only(left: 8),
        decoration: BoxDecoration(
          border: Border.all(color: indigo),
          borderRadius: BorderRadius.circular(30),
          color: filterTextList[widget.index].isSelected ? indigo : Theme.of(context).scaffoldBackgroundColor,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Center(
            child: Text(
          widget.text,
          style: TextStyle(
              color: filterTextList[widget.index].isSelected
                  ? Colors.white
                  : Theme.of(context).primaryColor,
                  ),
        )),
      ),
    );
  }
}
