import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SetSvg extends StatelessWidget {
  final String assetUrl;
  final String label;
  final Color? color;

  const SetSvg(
      {super.key, required this.assetUrl, required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetUrl,
      // colorFilter: ColorFilter.mode(color ?? null, black, BlendMode.srcIn),
      semanticsLabel: label,
    );
  }
}
