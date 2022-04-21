import '../../helpers/lulz_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LulzTextFormField extends StatelessWidget {
  const LulzTextFormField({
    Key? key,
    String? initValue,
    TextInputType? keyboardType,
    bool isObscure = false,
    // * InputDecoration
    String? hintText,
    Widget? label,
    String? labelText,
    Widget? prefixIcon,
    List<TextInputFormatter>? inputFormatters,
  })  : _initValue = initValue,
        _keyboardType = keyboardType,
        _isObscure = isObscure,
        // * InputDecoration
        _hintText = hintText,
        _label = label,
        _labelText = labelText,
        _prefixIcon = prefixIcon,
        _inputFormatters = inputFormatters,
        super(key: key);

  final String? _initValue;
  final TextInputType? _keyboardType;
  final bool _isObscure;

  // * InputDecoration
  final String? _hintText;
  final Widget? _label;
  final String? _labelText;
  final Widget? _prefixIcon;
  final List<TextInputFormatter>? _inputFormatters;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        inputFormatters: _inputFormatters,
        initialValue: _initValue,
        cursorColor: LulzColors.blue,
        cursorWidth: 5,
        keyboardType: _keyboardType,
        obscureText: _isObscure,
        validator: _validator,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: _hintText,
          hintStyle: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: LulzColors.black, fontWeight: FontWeight.bold),
          label: _label,
          labelText: _labelText,
          prefixIcon: _prefixIcon,
          filled: true,
          fillColor: LulzColors.textField,
          iconColor: LulzColors.black,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: LulzColors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: LulzColors.blue),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: LulzColors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: LulzColors.red),
          ),
        ),
      ),
    );
  }

  String? _validator(String? value) {
    value ??= '';
    return value.isEmpty ? 'Provide input fucker' : null;
  }
}
