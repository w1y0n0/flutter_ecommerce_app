import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core.dart';
import '../view/category_list_view.dart';

class CategoryListController extends State<CategoryListView> {
  static late CategoryListController instance;
  late CategoryListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> categories = [
    {
      'category_name': 'Pizza',
      'photo':
          'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      'item_count': 212,
    },
    {
      'category_name': 'Burger',
      'photo':
          'https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=872&q=80',
      'item_count': 104,
    },
    {
      'category_name': 'Drink',
      'photo':
          'https://images.unsplash.com/photo-1551024709-8f23befc6f87?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=957&q=80',
      'item_count': 219,
    },
    {
      'category_name': 'Fried Rice',
      'photo':
          'https://images.unsplash.com/photo-1512058564366-18510be2db19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=872&q=80',
      'item_count': 133,
    },
    {
      'category_name': 'Milk',
      'photo':
          'https://images.unsplash.com/photo-1550583724-b2692b85b150?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
      'item_count': 142,
    },
    {
      'category_name': 'Fried Chicken',
      'photo':
          'https://plus.unsplash.com/premium_photo-1683657860186-6afce5df3c0a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80',
      'item_count': 79,
    },
    {
      'category_name': 'Juice',
      'photo':
          'https://images.unsplash.com/photo-1603569283847-aa295f0d016a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=772&q=80',
      'item_count': 203,
    },
    {
      'category_name': 'Tea',
      'photo':
          'https://plus.unsplash.com/premium_photo-1674406481284-43eba097a291?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8VGVhfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
      'item_count': 204,
    },
    {
      'category_name': 'Coffee',
      'photo':
          'https://images.unsplash.com/photo-1541167760496-1628856ab772?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1037&q=80',
      'item_count': 212,
    },
    {
      'category_name': 'Smoothie',
      'photo':
          'https://plus.unsplash.com/premium_photo-1663853293868-9729d25fdf86?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      'item_count': 177,
    },
  ];
}
