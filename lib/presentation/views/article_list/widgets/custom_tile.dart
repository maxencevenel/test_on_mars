import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    required this.child,
    this.onTap,
  });

  final Widget child;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
      ),
      child: GestureDetector(onTap: onTap, child: child),
    );
  }
}
