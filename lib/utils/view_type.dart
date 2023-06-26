import 'package:flutter/material.dart';

class ViewType extends StatelessWidget {
  const ViewType({super.key, required this.viewName, required this.isSelected, required this.onTap});
  final String viewName;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          viewName,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19,
          color: isSelected ? Colors.black : Colors.grey),
        ),
      ),
    );
  }
}
