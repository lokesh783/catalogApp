import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/home_widgets/cata.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_image.dart';
import 'package:flutter_application_1/widgets/theme.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailpage extends StatelessWidget {
  final Item catalog;

  const HomeDetailpage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: MyTheme.creme,
        body: SafeArea(
            child: Row(children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image))
              .p16()
              .h64(context)
              .wHalf(context),
          Expanded(
            child: VxArc(
                height: 10.0,
                arcType: VxArcType.CONVEX,
                edge: VxEdge.LEFT,
                child: Container(
                    color: Colors.white,
                    child: Column(children: [
                      catalog.name.text.lg
                          .color(MyTheme.bluish)
                          .minFontSize(35)
                          .bold
                          .make()
                          .pOnly(top: 16, left: 32),
                      catalog.desc.text.xl2.make().pOnly(top: 8, left: 32),
                      20.heightBox,
                      "lorem ipsum sksdj sjsdd dwdac cwc cac  dqdkqjdq cackqdad dak dw vwejfqnqwf cjciwf wckadnqwd qdffiweg wc qwwdqdqd"
                          .text
                          .make()
                          .pOnly(left: 24),
                      30.heightBox,
                      "\$${catalog.price}".text.bold.xl4.make(),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          AddToCart(
                            catalog: catalog,
                          ).wh(100, 50).pOnly(top: 5),
                        ],
                      ).centered(),
                    ]))),
          ),
        ])));
  }
}
