import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/home_widgets/cata.dart';
import 'package:velocity_x/src/extensions/num_ext.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/Pages/homes_detail.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/theme.dart';

import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final atalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => context.vxNav.push(
            Uri(
                path: MyRoutes.homedetailRoute,
                queryParameters: {"id": atalog.id.toString()}),
            params: atalog,
          ),
          child: CatalogItem(
            ctalog: atalog,
          ),
        );
      },
    );
    // child: CatalogItem(ctalog: atalog),
    // ),
    // );
  }
}

class CatalogItem extends StatelessWidget {
  final Item ctalog;
  const CatalogItem({Key? key, required this.ctalog})
      : assert(ctalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(ctalog.id.toString()),
            child: CatalogImage(imag: ctalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ctalog.name.text.lg
                .minFontSize(23)
                .color(MyTheme.bluish)
                .bold
                .make()
                .pOnly(left: 10, top: 30),
            ctalog.desc.text.sm.make().pOnly(left: 10),
            6.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${ctalog.price}".text.bold.lg.make().pOnly(left: 20),
                AddToCart(catalog: ctalog)
              ],
            ).pOnly(right: 30),
          ],
        ))
      ],
    )).white.roundedLg.square(200).make().py16();
  }
}
