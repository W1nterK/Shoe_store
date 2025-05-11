import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:matule/core/brand_colors.dart';

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value ?? false;
            });
          },
          fillColor: MaterialStateProperty.resolveWith<Color>((
            Set<MaterialState> states,
          ) {
            if (states.contains(MaterialState.selected)) {
              return BrandColors.disable;
            }
            return BrandColors.accent;
          }),
        ),
        Expanded(
          child: Text(
            context.tr('i_agree'),
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 14,
              color: BrandColors.text,
            ),
          ),
        ),
        
      ],
    );
  }
}
