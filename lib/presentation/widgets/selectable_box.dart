import 'package:flutter/material.dart';

class SelectableBox extends StatefulWidget {
  final String answer;
  final bool isSelected;
  final VoidCallback onTap;

  const SelectableBox({
    required this.answer,
    required this.isSelected,
    required this.onTap,
  });

  @override
  _SelectableBoxState createState() => _SelectableBoxState();
}

class _SelectableBoxState extends State<SelectableBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.isSelected ? Colors.blue : Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.all(16),
        child: Text(widget.answer),
      ),
    );
  }
}