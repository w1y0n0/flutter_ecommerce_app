// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core.dart';

class CartView extends StatefulWidget {
  CartView({Key? key}) : super(key: key);

  Widget build(context, CartController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            H6(
              title: "ITEMS",
              subtitle: "Clear Cart",
            ),
            SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  return Container(
                    height: 105,
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 96.0,
                          height: 96.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                item["photo"],
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["product_name"],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                item["category"],
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$${item["discount_price"]}",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    "\$${item["price"]}",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Icon(
                                    MdiIcons.minusBox,
                                    size: 24.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "${item["qty"]}",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    MdiIcons.plusBox,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 18.0,
                              backgroundColor: Colors.grey[300],
                              child: Icon(
                                Icons.favorite,
                                color: Colors.grey[900],
                                size: 18.0,
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 18.0,
                              backgroundColor: Colors.grey[300],
                              child: Icon(
                                Icons.delete,
                                color: Colors.grey[900],
                                size: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Wrap(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                PaymentDetail(
                  title: "Subtotal",
                  subtitle: "\$590.08",
                  subtitle_bold: false,
                  desc: "3 items",
                ),
                const SizedBox(height: 12.0),
                PaymentDetail(
                  title: "Shopping",
                  subtitle: "\$30 (JNE Express)",
                  subtitle_bold: false,
                  desc: "6-7 days",
                  icon: Icons.chevron_right,
                ),
                const SizedBox(height: 12.0),
                PaymentDetail(
                  title: "Voucher",
                  subtitle: "ANGGA119",
                  subtitle_bold: false,
                  desc: "50% off",
                  icon: Icons.chevron_right,
                ),
                const SizedBox(height: 12.0),
                PaymentDetail(
                  title: "Total",
                  subtitle: "\$260.04",
                  subtitle_bold: true,
                ),
              ],
            ),
          ),
          QActionButton(
            label: "Payment",
            onPressed: () {},
          )
        ],
      ),
    );
  }

  @override
  State<CartView> createState() => CartController();
}

class PaymentDetail extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool subtitle_bold;
  final String? desc;
  final IconData? icon;

  const PaymentDetail({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.subtitle_bold,
    this.desc,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Container(
            width: 80,
            // color: Colors.red,
            child: Text(
              this.title,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          Expanded(
            child: Text(
              this.subtitle,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight:
                    (subtitle_bold) ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          if (desc != null) ...[
            Container(
              width: 60.0,
              // color: Colors.red,
              child: Text(
                desc!,
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
          if (desc == null) ...[
            Container(
              width: 60.0,
              // color: Colors.red,
              child: Text(
                "",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
          if (icon != null) ...[
            Icon(
              icon!,
              size: 24.0,
            ),
          ],
          if (icon == null) ...[
            Container(
              width: 24,
            ),
          ],
        ],
      ),
    );
  }
}
