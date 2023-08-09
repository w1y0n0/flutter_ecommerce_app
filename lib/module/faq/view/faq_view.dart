import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import '../controller/faq_controller.dart';

class FaqView extends StatefulWidget {
  FaqView({Key? key}) : super(key: key);

  Widget build(context, FaqController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Faq"),
        actions: [],
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse("https://example.com/"),
        ),
      ),
    );
  }

  @override
  State<FaqView> createState() => FaqController();
}
