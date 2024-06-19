import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';

class CategoryDropdown extends StatefulWidget {
  const CategoryDropdown({super.key});

  @override
  State<CategoryDropdown> createState() => _CategoryDropdownState();
}

class _CategoryDropdownState extends State<CategoryDropdown> {
  String? dropdownValue = "Inspiration";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                CarbonIcons.chevron_down,
                color: Colors.black,
              ),
            ),
            iconSize: 20,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w500,
            ),
            onChanged: (value) {
              setState(() {
                dropdownValue = value;
              });
            },
            items: <String>['Inspiration', 'Educative']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
