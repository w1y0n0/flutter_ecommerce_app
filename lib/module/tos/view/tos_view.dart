import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import '../controller/tos_controller.dart';

class TosView extends StatefulWidget {
  const TosView({Key? key}) : super(key: key);

  Widget build(context, TosController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tos"),
        actions: const [],
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse("https://jti.pnc.ac.id/teknik-informatika/"),
        ),
      ),
    );
  }

  @override
  State<TosView> createState() => TosController();
}
