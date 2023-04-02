import 'package:flutter/material.dart';

class ThirdPartyWrap extends StatelessWidget {
  const ThirdPartyWrap({
    super.key,
    required this.imageLoc,
  });

  final String imageLoc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(18),
        color: Colors.green[100],
      ),
      child: Image.asset(
        imageLoc,
        height: 90,
      ),
    );
  }
}
