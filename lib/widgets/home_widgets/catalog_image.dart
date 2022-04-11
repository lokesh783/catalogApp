
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/theme.dart';
import 'package:velocity_x/src/flutter/container.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/src/flutter/sizedbox.dart';

class CatalogImage extends StatelessWidget {
  final String imag;

  const CatalogImage({Key? key, required this.imag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imag,
    ).box.rounded.p8.color(MyTheme.creme).make().p16().w32(context);
  }
}
