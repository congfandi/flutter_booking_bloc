import 'package:booking/config/config.dart';
import 'package:booking/config/theme/app_dimen.dart';
import 'package:flutter/material.dart';

class AppInputText extends StatefulWidget {
  const AppInputText({Key? key, this.controller, required this.label})
      : super(key: key);
  final TextEditingController? controller;
  final String label;

  @override
  State<AppInputText> createState() => _AppInputTextState();
}

class _AppInputTextState extends State<AppInputText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimen.h40,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.label,
          hintStyle: AppFont.componentMedium,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
        ),
      ),
    );
  }
}
