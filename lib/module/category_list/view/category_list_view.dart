import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core.dart';
import '../controller/category_list_controller.dart';

class CategoryListView extends StatefulWidget {
  CategoryListView({Key? key}) : super(key: key);

  Widget build(context, CategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Categories"),
        elevation: 0.0,
        actions: [],
      ),
      body: ListView.builder(
        itemCount: controller.categories.length,
        physics: ScrollPhysics(),
        padding: EdgeInsets.all(20.0),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.categories[index];
          return Container(
            height: 120.0,
            margin: EdgeInsets.only(
              bottom: 12.0,
            ),
            clipBehavior: Clip.antiAlias,
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
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item["category_name"],
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "${item["item_count"]} Items",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  State<CategoryListView> createState() => CategoryListController();
}
