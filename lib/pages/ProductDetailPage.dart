import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetailPage extends StatelessWidget {
  final Item catalog;

  const ProductDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.theme.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    CustomTheme.darkBluishColor,
                  ),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )),
              child: "Buy".text.make(),
            ).wh(100, 50)
          ],
        ).p32(),
      ),
      body: Column(children: [
        Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image))
            .h32(context),
        Expanded(
            child: VxArc(
          height: 30.0,
          arcType: VxArcType.CONVEY,
          edge: VxEdge.TOP,
          child: Container(
            color: context.cardColor,
            width: context.screenWidth,
            child: Column(
              children: [
                catalog.name.text.xl4.color(context.accentColor).bold.make(),
                catalog.desc.text
                    .color(context.accentColor)
                    .caption(context)
                    .xl
                    .make(),
                10.heightBox,
                "Accusam et takimata elitr dolore eirmod stet dolores lorem labore sadipscing. Elitr rebum lorem ut elitr dolor. Lorem erat diam dolor erat sea no est. Vero accusam dolore sea takimata et lorem, diam duo accusam sed gubergren sit. Kasd justo sadipscing nonumy dolore sed est. Ut et duo et gubergren.."
                    .text
                    .color(context.accentColor)
                    .caption(context)
                    .make()
                    .p16()
              ],
            ).py64(),
          ),
        ))
      ]),
    );
  }
}
