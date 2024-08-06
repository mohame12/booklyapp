import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TFF extends StatelessWidget {
  const TFF({
    super.key, this.onChanged, this.onFieldSubmitted,
  });
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged,
      onFieldSubmitted:onFieldSubmitted ,
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
        enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.grey)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.grey)
        ),

      ),
    );
  }
}