import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core.dart';
import '../view/cart_view.dart';

class CartController extends State<CartView> {
  static late CartController instance;
  late CartView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
