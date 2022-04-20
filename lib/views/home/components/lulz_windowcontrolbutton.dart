import 'package:flutter/material.dart';

class LulzWindowControlButton extends StatelessWidget {
  const LulzWindowControlButton({
    required VoidCallback onTap,
    required Color color,
    Key? key,
  })  : _onTap = onTap,
        _color = color,
        super(key: key);

  final VoidCallback _onTap;
  final Color _color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Container(
        height: 18  ,
        width: 18 ,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
