
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core.dart';
import '../view/faq_view.dart';

class FaqController extends State<FaqView> {
    static late FaqController instance;
    late FaqView view;

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
        
    