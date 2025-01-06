import 'package:flutter/material.dart';

class Drawertile extends StatelessWidget {
  const Drawertile(
      {super.key,
      required this.text,
      required this.trailing,
      required this.onpress});
  final String text;
  final String trailing;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      height: 40,
      child: ListTile(
        title: Text(text),
        trailing: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.redAccent,
          ),
          child: Center(
            child: Text(
              trailing,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        onTap: onpress,
      ),
    );
  }
}
